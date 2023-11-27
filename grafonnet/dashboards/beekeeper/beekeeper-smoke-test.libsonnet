local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/beekeeper/beekeeper-smoke-test.libsonnet';
panels.dashboard.base(title='Milestone Smoke Test', tags=['beekeeper'], panels=[
  panels.row.base(title='Upload/Download Benchmark'),
  panels.timeseries.s(title='Average Upload Duration', description='', targets=[query.base(queries.rate_beekeeper_check_smoke_data_upload_duration_sum),]),
  panels.timeseries.s(title='Average Download Duration', description='', targets=[query.base(queries.rate_beekeeper_check_smoke_data_download_duration_sum),]),
  panels.stat.base(title='Upload Attempts', description='', targets=[query.base(queries.beekeeper_check_smoke_upload_attempts),]),
  panels.timeseries.percentunit(title='Upload Errors % (12h avg)', description='', targets=[query.base(queries.rate_beekeeper_check_smoke_upload_errors_count),]),
  panels.stat.base(title='Download Attempts', description='', targets=[query.base(queries.beekeeper_check_smoke_download_attempts),]),
  panels.timeseries.percentunit(title='Download Err % (1h avg)', description='', targets=[query.base(queries.rate_beekeeper_check_smoke_download_errors_count),]),
  panels.row.base(title='Speed'),
  panels.timeseries.binBps(title='Average Upload Speed', description='', targets=[query.base(queries.beekeeper_check_smoke_upload_size__increase_beekeeper_check_smoke_data_upload_duration_sum),]),
  panels.timeseries.binBps(title='All Time Upload Avg', description='', targets=[query.base(queries.beekeeper_check_smoke_upload_size__beekeeper_check_smoke_data_upload_duration_sum),]),
  panels.timeseries.binBps(title='Average Download Speed', description='', targets=[query.base(queries.beekeeper_check_smoke_upload_size__increase_beekeeper_check_smoke_data_download_duration_sum),]),
  panels.timeseries.binBps(title='All Time Download Avg', description='', targets=[query.base(queries.beekeeper_check_smoke_upload_size__beekeeper_check_smoke_data_download_duration_sum),]),
])
