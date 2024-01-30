local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/api.libsonnet';
panels.dashboard.base(title='API', tags=['components'], panels=[
  panels.timeseries.base(title='api request rates', description='', targets=[query.base(queries.increase_bee_api_ping_request_count),query.base(queries.increase_bee_api_request_count),]),
  panels.bargauge.s(title='Upload api duration', description='', targets=[query.base(queries.bee_api_content_api_duration_sum_post),]),
  panels.bargauge.s(title='Download api duration', description='', targets=[query.base(queries.bee_api_content_api_duration_sum_get),]),
  panels.heatmap.base(title='response duration seconds', description='', targets=[query.base(queries.increase_bee_api_response_duration_seconds_bucket),]),
  panels.timeseries.base(title='response codes (2XX)', description='', targets=[query.base(queries.increase_bee_api_response_code_count_2xx),]),
  panels.timeseries.base(title='response codes (3XX)', description='', targets=[query.base(queries.increase_bee_api_response_code_count_3xx),]),
  panels.timeseries.base(title='response codes (4XX)', description='', targets=[query.base(queries.increase_bee_api_response_code_count_4xx),]),
  panels.timeseries.base(title='response codes (5XX)', description='', targets=[query.base(queries.increase_bee_api_response_code_count_5xx),]),
])
