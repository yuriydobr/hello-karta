#!/bin/bash

APP_NAME=$1
STAGING_APP_NAME=$APP_NAME-staging

# validate
if [ -z ${APP_NAME} ]; then echo "First variable should be app name"; exit -1; fi

echo 'destroying '$APP_NAME
heroku login
echo 'destroying apps'
read -p "Press enter to continue"
heroku apps:destroy -a $APP_NAME --confirm $APP_NAME
heroku apps:destroy -a $STAGING_APP_NAME --confirm $STAGING_APP_NAME