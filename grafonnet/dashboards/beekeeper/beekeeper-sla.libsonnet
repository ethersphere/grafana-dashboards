local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/beekeeper/beekeeper-sla.libsonnet';
panels.dashboard.base(title='SLA', tags=['beekeeper'], panels=[
  panels.row.base(title='Network Availability'),
  panels.stat.percentunit(title='24h Upload Success', description='', targets=[query.base(queries.increase_beekeeper_net_avail_upload_attempts_24h_increase_beekeeper_net_avail_upload_errors_count_24h__increase_beekeeper_net_avail_upload_attempts_24h),]),
  panels.stat.percentunit(title='24h Upload Success', description='', targets=[query.base(queries.increase_beekeeper_net_avail_download_attempts_24h_increase_beekeeper_net_avail_download_errors_count_24h__increase_beekeeper_net_avail_download_attempts_24h),]),
  panels.timeseries.percentunit(title='All Time Upload Success', description='', targets=[query.base(queries.beekeeper_net_avail_upload_attempts_beekeeper_net_avail_upload_errors_count__beekeeper_net_avail_upload_attempts),]),
  panels.timeseries.percentunit(title='All Time Download Success', description='', targets=[query.base(queries.beekeeper_net_avail_download_attempts_beekeeper_net_avail_download_errors_count__beekeeper_net_avail_download_attempts),]),
  panels.row.base(title='Data Durability'),
  panels.stat.dtdurations(title='Avg chunk download duration', description='Avg time taken to download a single chunk successfully', targets=[query.base(queries.rate_beekeeper_check_data_durability_chunk_download_duration_seconds_sum),]),
  panels.stat.dtdurations(title='Avg file download duration', description='', targets=[query.base(queries.rate_beekeeper_check_data_durability_file_download_duration_seconds_sum),]),
  panels.stat.percentunit(title='Chunk retrieval rate', description='', targets=[query.base(queries.sum_increase_beekeeper_check_data_durability_chunk_download_errors_1),]),
  panels.stat.percentunit(title='File retrieval rate', description='', targets=[query.base(queries.sum_increase_beekeeper_check_data_durability_file_download_errors),]),
  panels.stat.locale(title='Total chunks in file', description='', targets=[query.base(queries.beekeeper_check_data_durability_chunks_count),]),
  panels.stat.bytes(title='Total data downloaded', description='', targets=[query.base(queries.sum_increase_beekeeper_check_data_durability_file_size_bytes),]),
  panels.timeseries.bytes(title='Memory usage', description='', targets=[query.base(queries.container_memory_usage_bytes),]),
  panels.stat.locale(title='Chunk download attempts', description='', targets=[query.base(queries.sum_increase_beekeeper_check_data_durability_chunk_download_attempts),]),
  panels.stat.locale(title='Chunk download errors', description='', targets=[query.base(queries.sum_increase_beekeeper_check_data_durability_chunk_download_errors),]),
  panels.row.base(title='Retrieval Latency'),
  panels.stat.s(title='24h Chunk Retrieval Duration', description='', targets=[query.base(queries.increase_beekeeper_net_avail_data_download_duration_sum),]),
  panels.timeseries.ns(title='All Time Chunk Retrieval Duration', description='', targets=[query.base(queries.beekeeper_net_avail_data_download_duration_sum),]),
  panels.stat.binBps(title='24 hour average file download speed', description='', targets=[query.base(queries.beekeeper_check_longavailability_d_download_size_bytes__rate_beekeeper_check_longavailability_d_download_duration_seconds_sum),]),
  panels.stat.binBps(title='All time file average download speed', description='', targets=[query.base(queries.beekeeper_check_longavailability_d_download_size_bytes__beekeeper_check_longavailability_d_download_duration_seconds_sum),]),
])
