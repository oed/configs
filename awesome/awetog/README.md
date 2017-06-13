## Requirements
lua-socket

## Get running entry
curl -u <token>:api_token -X GET https://www.toggl.com/api/v8/time_entries/current | jq

## Get time entry detail
curl -u <token>:api_token -X GET https://www.toggl.com/api/v8/time_entries/{id} | jq

## Stop current entry
curl -u <token>:api_token -X GET https://www.toggl.com/api/v8/time_entries/{id}/stop | jq

## Get project info
curl -u <token>:api_token -X GET https://www.toggl.com/api/v8/projects/{pid} | jq
