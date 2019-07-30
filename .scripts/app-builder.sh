#!/bin/sh

# App builder- heroku and circleCI

APP_NAME=$1
APP_URL="https://${APP_NAME}.herokuapp.com/"
STAGING_APP_NAME=$APP_NAME-staging
STAGING_APP_URL="https://${STAGING_APP_NAME}.herokuapp.com/"

CIRCLE_TOKEN=$2
CIRCLE_PROJECT="hello-karta"

# validate
if [ -z ${APP_NAME} ]; then echo "First variable should be app name"; exit -1; fi
if [ -z ${CIRCLE_TOKEN} ]; then echo "Second variable should be circleci token"; exit -1; fi

echo 'creating '$APP_NAME
heroku login
heroku apps:create $APP_NAME --region eu
heroku apps:create $STAGING_APP_NAME --remote staging --region eu

echo 'Checking access to apps...'
ACCESS=$(heroku access -a $APP_NAME)
HEROKU_USERNAME=${ACCESS%" owner"}
echo 'Heroku user '${HEROKU_USERNAME}

echo 'Getting Heroku API token...'
HEROKU_API_KEY=$(heroku auth:token)
echo 'done.'

echo 'Getting circleci username...'
login=$(curl -v --silent "https://circleci.com/api/v1.1/me?circle-token=${CIRCLE_TOKEN}" --stderr - | grep login)
login=${login/"\"login\" : \""} 
CIRCLE_LOGIN=$(echo $login | cut -f1 -d "\"")
echo 'Circle user '$CIRCLE_LOGIN

echo 'Adding env variables...'
CIRCLE_ENV_URL="https://circleci.com/api/v1.1/project/github/${CIRCLE_LOGIN}/${CIRCLE_PROJECT}/envvar?circle-token=${CIRCLE_TOKEN}"
curl -X POST --header "Content-Type: application/json" -d "{\"name\":\"HEROKU_USERNAME\", \"value\":\"${HEROKU_USERNAME}\"}" $CIRCLE_ENV_URL
curl -X POST --header "Content-Type: application/json" -d "{\"name\":\"HEROKU_APP_NAME\", \"value\":\"${APP_NAME}\"}" $CIRCLE_ENV_URL
curl -X POST --header "Content-Type: application/json" -d "{\"name\":\"HEROKU_STAGING_APP_NAME\", \"value\":\"${STAGING_APP_NAME}\"}" $CIRCLE_ENV_URL
curl -X POST --header "Content-Type: application/json" -d "{\"name\":\"HEROKU_API_KEY\", \"value\":\"${HEROKU_API_KEY}\"}" $CIRCLE_ENV_URL
curl -X POST --header "Content-Type: application/json" -d "{\"name\":\"APP_URL\", \"value\":\"${APP_URL}\"}" $CIRCLE_ENV_URL
curl -X POST --header "Content-Type: application/json" -d "{\"name\":\"STAGING_APP_URL\", \"value\":\"${STAGING_APP_URL}\"}" $CIRCLE_ENV_URL