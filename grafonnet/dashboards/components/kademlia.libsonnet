local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/kademlia.libsonnet';
panels.dashboard.base(title='Kademlia', tags=['components'], panels=[
  panels.timeseries.base(title='Depth', description='', targets=[query.base(queries.bee_kademlia_current_depth),]),
  panels.timeseries.base(title='Radius', description='', targets=[query.base(queries.bee_kademlia_current_storage_depth),]),
  panels.timeseries.base(title='Flagged for blocking per minute', description='', targets=[query.base(queries.increase_bee_kademlia_flag),]),
  panels.timeseries.short(title='Blocklist due to flagging per minute', description='', targets=[query.base(queries.increase_bee_kademlia_blocklist),]),
  panels.timeseries.short(title='Libp2p blocklisting rate', description='', targets=[query.base(queries.rate_bee_libp2p_blocklisted_peer_count),]),
  panels.timeseries.short(title='Disconnects rate', description='', targets=[query.base(queries.rate_bee_kademlia_total_inbound_disconnections),]),
  panels.timeseries.s(title='P99 Ping Duration', description='', targets=[query.base(queries.histogram_quantile_0_99_sum_rate_bee_kademlia_peer_latency_ewma_bucket),query.base(queries.rate_bee_kademlia_peer_latency_ewma_sum),]),
  panels.stat.base(title='Before Expire Waits', description='', targets=[query.base(queries.bee_kademlia_total_before_expire_waits),]),
  panels.stat.base(title='Connection To Bootnodes Attemps', description='', targets=[query.base(queries.bee_kademlia_total_bootnodes_connection_attempts),]),
  panels.gauge.base(title='Light nodes', description='', targets=[query.base(queries.bee_lightnode_currently_connected_peers),]),
  panels.gauge.base(title='Connect/Known', description='', targets=[query.base(queries.bee_kademlia_currently_connected_peers),query.base(queries.bee_kademlia_currently_known_peers),]),
  panels.stat.base(title='Metrics Flush Errors', description='', targets=[query.base(queries.bee_kademlia_internal_metrics_flush_total_errors),]),
  panels.stat.base(title='Pick Calls', description='', targets=[query.base(queries.bee_kademlia_pick_calls),query.base(queries.bee_kademlia_pick_calls_false),]),
  panels.heatmap.base(title='Metrics Flush Time', description='', targets=[query.base(queries.sum_rate_bee_kademlia_internal_metrics_flush_time_bucket),]),
  panels.stat.base(title='Connections', description='', targets=[query.base(queries.bee_kademlia_total_inbound_connections),query.base(queries.bee_kademlia_total_inbound_disconnections),query.base(queries.bee_kademlia_total_outbound_connections),query.base(queries.bee_kademlia_total_outbound_connection_attempts),query.base(queries.bee_kademlia_total_outbound_connection_failed_attempts),]),
  panels.heatmap.base(title='Add Addressbook Overlays Time', description='', targets=[query.base(queries.sum_rate_bee_kademlia_start_add_addressbook_overlays_time_bucket),]),
  panels.gauge.base(title='Connected Peers Reachability', description='', targets=[query.base(queries.bee_kademlia_peers_reachability_status),]),
])
