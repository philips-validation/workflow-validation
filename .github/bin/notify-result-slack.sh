#!/usr/bin/env bash

circle="red_circle"
## possible statusses: failure / canceled / success
if [ $VALIDATION_STATUS = "success" ]; then
  circle="large_green_circle"
fi

curl -X POST -H 'Content-type: application/json' --data "{'text':'Github Validation on *[$VALIDATION_PART  - $VALIDATION_OS]* \n Result: $VALIDATION_STATUS :$circle:'}" $SLACK_WEBHOOK
