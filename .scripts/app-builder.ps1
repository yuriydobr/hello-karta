# App builder- heroku and circleCI
$APP_NAME=$args[0]
$APP_URL="https://${APP_NAME}.herokuapp.com/"
$STAGING_APP_NAME="{$APP_NAME}-staging"
$STAGING_APP_URL="https://${STAGING_APP_NAME}.herokuapp.com/"
$CIRCLE_TOKEN=$args[1]
$CIRCLE_PROJECT="hello-karta"

# validate
if ( !$APP_NAME ){ Write-Output "First variable should be app name"; exit -1}
if ( $APP_NAME.length -gt 25 ){ Write-Output "App name must be less than 25 characters "; exit -1}
if ( !$CIRCLE_TOKEN ){ Write-Output "Second variable should be circleci token"; exit -1}
Write-Output 'creating '$APP_NAME
heroku login
heroku apps:create $APP_NAME --region eu
heroku apps:create $STAGING_APP_NAME --remote staging --region eu
Write-Output 'Checking access to apps...'

$ACCESS = (heroku access -a $APP_NAME)
$HEROKU_USERNAME=$ACCESS.Replace(" owner","")
Write-Output "Heroku user $HEROKU_USERNAME"
Write-Output 'Getting Heroku API token...'
$HEROKU_API_KEY=$(heroku auth:token)
Write-Output 'done.'

Write-Output 'Getting circleci username...'

$headers = @{'Accept' = 'application/json'; }
$REQUEST_URL="https://circleci.com/api/v1.1/me?circle-token=${CIRCLE_TOKEN}"
$LOGIN_RESULT=Invoke-WebRequest -Uri $REQUEST_URL -Headers $headers

$CONTENT=$LOGIN_RESULT.Content | ConvertFrom-Json
$CIRCLE_LOGIN=$CONTENT.identities.github.login
Write-Output 'Circle user '$CIRCLE_LOGIN

Write-Output 'Adding env variables...'
$CIRCLE_ENV_URL="https://circleci.com/api/v1.1/project/github/${CIRCLE_LOGIN}/${CIRCLE_PROJECT}/envvar?circle-token=${CIRCLE_TOKEN}"
Invoke-WebRequest -Uri $CIRCLE_ENV_URL  -Method 'POST' -Headers $headers  -Body @{ 'name' = 'HEROKU_USERNAME' ; 'value' = $HEROKU_USERNAME }
Invoke-WebRequest -Uri $CIRCLE_ENV_URL  -Method 'POST' -Headers $headers  -Body @{ 'name' = 'HEROKU_APP_NAME' ; 'value' = $APP_NAME }
Invoke-WebRequest -Uri $CIRCLE_ENV_URL  -Method 'POST' -Headers $headers  -Body @{ 'name' = 'HEROKU_STAGING_APP_NAME' ; 'value' = $STAGING_APP_NAME }
Invoke-WebRequest -Uri $CIRCLE_ENV_URL  -Method 'POST' -Headers $headers  -Body @{ 'name' = 'HEROKU_API_KEY' ; 'value' = $HEROKU_API_KEY }
Invoke-WebRequest -Uri $CIRCLE_ENV_URL  -Method 'POST' -Headers $headers  -Body @{ 'name' = 'APP_URL' ; 'value' = $APP_URL }
Invoke-WebRequest -Uri $CIRCLE_ENV_URL  -Method 'POST' -Headers $headers  -Body @{ 'name' = 'STAGING_APP_URL' ; 'value' = $STAGING_APP_URL }

Write-Output "Made by the notorious IZZY"