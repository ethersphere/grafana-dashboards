local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/aggregator.libsonnet';
panels.dashboard.base(title='Aggregator', tags=['components'], panels=[
  panels.table.short(title='Bee versions', description='', targets=[query.base(queries.bee_info),]),
  panels.table.short(title='Go versions', description='', targets=[query.base(queries.go_info),]),
  panels.gauge.base(title='Kademlia inbound connections', description='', targets=[query.base(queries.bee_kademlia_total_inbound_connections),]),
  panels.table.short(title='Restarts', description='', targets=[query.base(queries.kube_pod_container_status_restarts_total),]),
  panels.gauge.base(title='Kademlia outbound connections', description='', targets=[query.base(queries.bee_kademlia_total_outbound_connections),]),
  panels.table.short(title='Kademlia Depth', description='', targets=[query.base(queries.bee_kademlia_current_depth),]),
  panels.table.short(title='Kademlia Radius', description='', targets=[query.base(queries.bee_kademlia_current_radius),]),
  panels.table.short(title='Kademlia known peers', description='', targets=[query.base(queries.bee_kademlia_currently_known_peers),]),
  panels.table.short(title='Kademlia connected peers', description='', targets=[query.base(queries.bee_kademlia_currently_connected_peers),]),
])
