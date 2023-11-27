local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/streams.libsonnet';
panels.dashboard.base(title='Streams', tags=['components'], panels=[
  panels.stat.base(title='libp2p created streams', description='', targets=[query.base(queries.increase_bee_libp2p_created_stream_count),]),
  panels.stat.base(title='libp2p closed stream count', description='', targets=[query.base(queries.increase_bee_libp2p_closed_stream_count),]),
  panels.stat.base(title='libp2p stream reset count', description='', targets=[query.base(queries.increase_bee_libp2p_stream_reset_count),]),
  panels.stat.base(title='libp2p handled stream count', description='', targets=[query.base(queries.increase_bee_libp2p_handled_stream_count),]),
  panels.stat.base(title='libp2p stream handler reset errors', description='', targets=[query.base(queries.increase_bee_libp2p_stream_handler_error_reset_count),]),
  panels.timeseries.base(title='Incoming streams (handled vs errored)', description='', targets=[query.base(queries.increase_bee_libp2p_handled_stream_count),query.base(queries.increase_bee_libp2p_stream_handler_error_reset_count),]),
  panels.gauge.base(title='Incoming streams (handled vs errored)', description='', targets=[query.base(queries.increase_bee_libp2p_stream_handler_error_reset_count_divided),]),
  panels.row.base(title='Row title'),
  panels.timeseries.base(title='Created streams', description='', targets=[query.base(queries.increase_bee_libp2p_created_stream_count),query.base(queries.increase_bee_libp2p_library_reported_created_stream_count),]),
  panels.timeseries.base(title='Closed streams', description='', targets=[query.base(queries.increase_bee_libp2p_closed_stream_count),query.base(queries.increase_bee_libp2p_library_reported_closed_stream_count),]),
])
