

set COLOR="ff0000"
IF "%VALIDATION_STATUS%" == "success" set COLOR="00ff00"

curl -H 'Content-Type: application/json' -v %TEAMS_WEBHOOK% --data-binary "{  \"@type\": \"MessageCard\",  \"@context\": \"http://schema.org/extensions\",   \"themeColor\": \"%COLOR%\",   \"summary\":\"Validation run results: ...\",   \"sections\": [    {      \"activityTitle\": \"Validation results %VALIDATION_PART% - %VALIDATION_OS%\",      \"activitySubtitle\": \"results: %VALIDATION_STATUS%\",      \"markdown\": true    }  ],}"
