$APP_NAME=$args[0]
$STAGING_APP_NAME="{$APP_NAME}-staging"

# validate
if ( !$APP_NAME ){ Write-Output "First variable should be app name"; exit -1}

Write-Output "destroying $APP_NAME"

heroku login
Write-Output "destroying apps"
read -p "Press enter to continue"
heroku apps:destroy -a $APP_NAME --confirm $APP_NAME
heroku apps:destroy -a $STAGING_APP_NAME --confirm $STAGING_APP_NAME