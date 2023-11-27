local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/protocols/retrieval.libsonnet';
panels.dashboard.base(title='Retrieval', tags=['protocols'], panels=[
  panels.timeseries.s(title='p99 successful chunk retrieval', description='', targets=[query.base(queries.histogram_quantile_0_99_sum_rate_bee_retrieval_retrieve_chunk_time_bucket),]),
  panels.timeseries.s(title='Avg Request Duration', description='', targets=[query.base(queries.increase_bee_retrieval_request_duration_time_sum),]),
  panels.timeseries.short(title='requests per second', description='', targets=[query.base(queries.rate_bee_retrieval_request_count),]),
  panels.timeseries.short(title='attempts per second', description='', targets=[query.base(queries.rate_bee_retrieval_peer_request_count),]),
  panels.timeseries.percentunit(title='Request fail %', description='', targets=[query.base(queries.rate_bee_retrieval_request_failure_count),]),
  panels.timeseries.short(title='retrieved per second', description='', targets=[query.base(queries.rate_bee_retrieval_total_retrieved),]),
  panels.timeseries.short(title='Attempts per Request', description='', targets=[query.base(queries.increase_bee_retrieval_peer_request_count),]),
  panels.timeseries.short(title='Invalid Chunks Per Day', description='', targets=[query.base(queries.increase_bee_retrieval_invalid_chunk_retrieved),]),
  panels.timeseries.short(title='Avg Attempts per Request', description='', targets=[query.base(queries.increase_bee_retrieval_peer_request_count),]),
])
