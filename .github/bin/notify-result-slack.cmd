
set circle="red_circle"
IF "%VALIDATION_STATUS%" == "success" set circle="large_green_circle"

curl -X POST -H 'Content-type: application/json' --data "{'text':'Github Validation on *[%VALIDATION_PART%  - %VALIDATION_OS%]* \n Result: %VALIDATION_STATUS% :%circle%:'}" %SLACK_WEBHOOK%
