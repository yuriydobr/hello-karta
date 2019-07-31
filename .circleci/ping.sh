#!/bin/bash
APP_URL=$1
RESPONSE=$(curl -LI $APP_URL -o /dev/null -w '%{http_code}\n' -s)

for i in {1..5}
do
if [ $RESPONSE == "200" ]; then
    echo "ping successful" $APP_URL $RESPONSE 
    sleep 1
else
    echo "site not responding" $APP_URL $RESPONSE 
    exit 1;
fi
done