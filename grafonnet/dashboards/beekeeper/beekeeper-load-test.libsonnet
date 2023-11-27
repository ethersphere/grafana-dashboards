local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/beekeeper/beekeeper-load-test.libsonnet';
panels.dashboard.base(title='Load Test', tags=['beekeeper'], panels=[
  panels.row.base(title='Upload/Download Benchmark'),
  panels.timeseries.s(title='Average Upload Duration', description='', targets=[query.base(queries.beekeeper_check_load_data_upload_duration_sum),]),
  panels.timeseries.s(title='Average Download Duration', description='', targets=[query.base(queries.beekeeper_check_load_data_download_duration_sum),]),
  panels.gauge.bytes(title='Uploaded data (this load test run only!)', description='This will reset every time the load test respawns (12h)', targets=[query.base(queries.beekeeper_check_load_data_upload_duration_count),]),
  panels.stat.binBps(title='Average Upload Speed', description='', targets=[query.base(queries.beekeeper_check_load_data_upload_duration_sum_5e6),]),
  panels.stat.base(title='Upload Attempts', description='', targets=[query.base(queries.beekeeper_check_load_upload_attempts),]),
  panels.stat.percentunit(title='Upload Errors %', description='', targets=[query.base(queries.beekeeper_check_load_upload_errors_count),]),
  panels.stat.base(title='Data Mismatch', description='', targets=[query.base(queries.beekeeper_check_load_download_mismatch),]),
  panels.stat.binBps(title='Average Download Speed', description='', targets=[query.base(queries.beekeeper_check_load_data_download_duration_sum_5e6),]),
  panels.stat.base(title='Download Attempts', description='', targets=[query.base(queries.beekeeper_check_load_download_attempts),]),
  panels.stat.percentunit(title='Download Errors %', description='', targets=[query.base(queries.beekeeper_check_load_download_errors_count),]),
  panels.row.base(title='Speed'),
  panels.timeseries.binBps(title='Average Upload Speed', description='', targets=[query.base(queries.increase_beekeeper_check_load_data_upload_duration_sum),]),
  panels.timeseries.binBps(title='Average Upload Speed (alltime average)', description='', targets=[query.base(queries.beekeeper_check_load_data_upload_duration_sum),]),
  panels.timeseries.binBps(title='Average Download Speed', description='', targets=[query.base(queries.increase_beekeeper_check_load_data_download_duration_sum),]),
  panels.timeseries.binBps(title='Average Download Speed (alltime average)', description='', targets=[query.base(queries.beekeeper_check_load_data_download_duration_sum),]),
])
