#!/usr/bin/env bash

if [[ -z $1 ]]; then
  echo "You must specify folder"
  exit 1
fi

generate_queries() {
echo "{"
jq -r '.panels[] | .targets[]? as $target | select($target.expr!=null) | $target.expr | split("{")[0] | sub("[(-/+]"; "_"; "g")? | sub("^\\d+(\\w+)?(\\d+)?__"; ""; "g")? + ":{" + "query:\"" + $target.expr | sub("instance=~?\".instance\", ?namespace=~?\".namespace\""; "%(selector)s"; "g")? | sub("namespace=~?\".namespace\", ?instance=~?\".instance\""; "%(selector)s"; "g")?|sub("\\d+[smhd]"; "$interval"; "g")?|sub("\\s+"; ""; "g")?+"\",legend:\"" + $target.legendFormat+"\"},"' "${1}" | sort | uniq
echo "}"
}

generate_dashboard() {
folder=$(dirname "${1}")
dashboard=$(basename "${1}" | cut -d'.' -f1)
echo "local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/${folder}/${dashboard}.libsonnet';
panels.dashboard.base(title='$(jq -r '.title' "${1}")', tags=['${folder}'], panels=["
jq -r '.panels[] |
"  panels." + .type + "." +
(.fieldConfig.defaults.unit |
if . == null or . == "none" then
"base" else . end) +
"(title='"'"'" + .title + "'"'"'" + ", description='"'"'" + .description + "'"'"'" + if .type == "row" then ")," else ", targets=[" +
(reduce .targets[]?.expr as $expr ( ""; . + "query.base(queries." + ($expr | split("{")[0] | sub("[(-/+]"; "_"; "g")? | sub("^\\d+(\\w+)?(\\d+)?__"; ""; "g")?) + "),")) +
"])," end' "${1}"
echo "])"
}

for i in "${1}"/*json; do
  mkdir -p ./grafonnet/dashboards/"${1}" ./grafonnet/lib/queries/"${1}"
  generate_queries "${i}" > ./grafonnet/lib/queries/"${i%%.json}".libsonnet
  generate_dashboard "${i}" > ./grafonnet/dashboards/"${i%%.json}".libsonnet
done
