#!/bin/bash

source ./env

# curl -H "Accept: application/vnd.github.ant-man-preview+json" \
#      -H "Authorization: token $TOKEN" \
#     https://api.github.com/repos/imrehg/deploymentcheck/deployments


API_RESPONSE=$(curl --silent -H "Accept: application/vnd.github.ant-man-preview+json" -H "Authorization: token $TOKEN" -X POST -H 'Content-Type: application/json' -d '{"ref": "curl", "environment": "debug", "transient_environment": true, "description": "My debug env", "required_contexts": []}' https://api.github.com/repos/imrehg/deploymentcheck/deployments)
echo $API_RESPONSE

URL=$(echo $API_RESPONSE | jq ".statuses_url")
echo $URL

# curl -H "Accept: application/vnd.github.ant-man-preview+json" \
#      -H "Authorization: token $TOKEN" \
#      -X POST -H 'Content-Type: application/json' \
#      -d '{"state": "success", "target_url": "https://gergely.imreh.net", "description": "My debug status", "environment_url": "https://twitter.com/imrehg"}' \
#     https://api.github.com/repos/imrehg/deploymentcheck/deployments/228791476/statuses