#!/bin/bash

source ./env

# curl -H "Accept: application/vnd.github.ant-man-preview+json" \
#      -H "Authorization: token $TOKEN" \
#     https://api.github.com/repos/imrehg/deploymentcheck/deployments

# curl -H "Accept: application/vnd.github.ant-man-preview+json" \
#      -H "Authorization: token $TOKEN" \
#      -X POST -H 'Content-Type: application/json' \
#      -d '{"ref": "master", "environment": "debug", "transient_environment": true, "description": "My debug env", "required_contexts": []}' \
#     https://api.github.com/repos/imrehg/deploymentcheck/deployments



curl -H "Accept: application/vnd.github.ant-man-preview+json" \
     -H "Authorization: token $TOKEN" \
     -X POST -H 'Content-Type: application/json' \
     -d '{"state": "success", "target_url": "https://gergely.imreh.net", "description": "My debug status", "environment_url": "https://twitter.com/imrehg"}' \
     https://api.github.com/repos/imrehg/deploymentcheck/deployments/228789535/statuses