#!/bin/bash

# Define the path to the target file that we're going to check.
TARGET_FILE="autodeploy.json"

# Use an if-else statement to check if the file exists.
if [ -f "$TARGET_FILE" ]
then
    echo "$TARGET_FILE Enabled"
    # setup Netsuite authentication
    suitecloud account:savetoken --account $3 --authid wd-prod-ci --tokenid $1 --tokensecret $2
    suitecloud project:deploy --accountspecificvalues ERROR
    #remove credentials
    suitecloud account:manageauth --remove wd-prod-ci

else
    echo "$TARGET_FILE Not Trigger"
fi

