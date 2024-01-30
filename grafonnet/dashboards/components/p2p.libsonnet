local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/p2p.libsonnet';
panels.dashboard.base(title='P2P', tags=['components'], panels=[
  panels.stat.base(title='libp2p created connection', description='', targets=[query.base(queries.bee_libp2p_created_connection_count),]),
  panels.stat.base(title='libp2p handled connection', description='', targets=[query.base(queries.increase_bee_libp2p_handled_connection_count),]),
  panels.stat.base(title='libp2p stream handler reset errors', description='', targets=[query.base(queries.increase_bee_libp2p_stream_handler_error_reset_count),]),
  panels.timeseries.base(title='blocklist', description='', targets=[query.base(queries.increase_bee_libp2p_blocklisted_peer_count),query.base(queries.increase_bee_libp2p_blocklisted_peer_err_count),]),
  panels.timeseries.base(title='connect vs. disconnect', description='', targets=[query.base(queries.increase_bee_libp2p_disconnect_count),query.base(queries.increase_bee_libp2p_created_connection_count),]),
])
