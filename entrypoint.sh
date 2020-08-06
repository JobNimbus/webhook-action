#!/bin/sh
set -eu
json_data=$(echo $data | tr -d '\"')

curl -v -X POST -H "Content-Type: application/json" --data "{ \"data\": ${json_data} }" $WEBHOOK_URL
