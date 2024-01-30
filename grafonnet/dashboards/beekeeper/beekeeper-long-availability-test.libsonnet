local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/beekeeper/beekeeper-long-availability-test.libsonnet';
panels.dashboard.base(title='Long availability test', tags=['beekeeper'], panels=[
  panels.timeseries.binBps(title='Avg download speed', description='', targets=[query.base(queries.beekeeper_check_longavailability_d_download_size_bytes__increase_beekeeper_check_longavailability_d_download_duration_seconds_sum),]),
  panels.timeseries.bool(title='Download status', description='', targets=[query.base(queries.beekeeper_check_longavailability_d_download_status),]),
  panels.stat.decbytes(title='Download size', description='', targets=[query.base(queries.beekeeper_check_longavailability_d_download_size_bytes),]),
  panels.row.base(title='Download Benchmark'),
  panels.row.base(title='Speed'),
  panels.timeseries.s(title='Avg download duration', description='', targets=[query.base(queries.rate_beekeeper_check_longavailability_d_download_duration_seconds_sum),]),
  panels.timeseries.binBps(title='All time download speed', description='', targets=[query.base(queries.beekeeper_check_longavailability_d_download_size_bytes__beekeeper_check_longavailability_d_download_duration_seconds_sum),]),
  panels.stat.percentunit(title='Download Err Rate', description='Ratio of download errors to total attempts', targets=[query.base(queries.rate_beekeeper_check_longavailability_download_errors_count_download),]),
  panels.stat.base(title='Download Attempts', description='', targets=[query.base(queries.round_sum_increase_beekeeper_check_longavailability_download_attempts),]),
  panels.stat.base(title='Download errors', description='', targets=[query.base(queries.round_sum_increase_beekeeper_check_longavailability_download_errors_count),]),
  panels.stat.base(title='Failed retrieved', description='Ratio of download errors to successful retrieval', targets=[query.base(queries.rate_beekeeper_check_longavailability_download_errors_count_retrieved),]),
])
