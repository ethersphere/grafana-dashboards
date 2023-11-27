#!/usr/bin/env bash

if [[ -z $1 ]]; then
  echo "You must specify folder"
  exit 1
fi

dashboard=$(basename "${1}")

for i in "./grafonnet/dashboards/${1}"/*libsonnet; do
  file=$(basename "${i}" | cut -d'.' -f1)
  mkdir -p ./dashboards/"${dashboard}"
  jsonnet -J ./grafonnet/vendor "${i}" > ./dashboards/"${dashboard}/${file}".json
done
