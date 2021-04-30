#!/usr/bin/env bash

COLOR="ff0000"
if [ $VALIDATION_STATUS = "success" ]; then
  COLOR="00ff00"
fi

curl -H 'Content-Type: application/json' -v $TEAMS_WEBHOOK --data-binary @- <<EOF
{
  "@type": "MessageCard",
  "@context": "http://schema.org/extensions",
  "themeColor": "$COLOR",
  "summary": "Validation run results",
  "sections": [
    {
      "activityTitle": "Validation results $VALIDATION_PART - $VALIDATION_OS",
      "activitySubtitle": "results: $VALIDATION_STATUS",
      "markdown": true
    }
  ],
}
EOF
