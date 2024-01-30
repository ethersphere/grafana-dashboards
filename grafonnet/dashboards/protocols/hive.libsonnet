local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/protocols/hive.libsonnet';
panels.dashboard.base(title='Hive', tags=['protocols'], panels=[
  panels.timeseries.percentunit(title='Reachable error rate', description='', targets=[query.base(queries.increase_bee_hive_unreachable_peers_count),]),
  panels.timeseries.base(title='Reach attemps', description='', targets=[query.base(queries.increase_bee_hive_reachable_peers_count),]),
  panels.heatmap.base(title='Ping time', description='Time taken for ping operation', targets=[query.base(queries.sum_rate_bee_hive_ping_time_bucket),]),
  panels.heatmap.base(title='Failed ping times', description='Time taken for failed ping operation', targets=[query.base(queries.sum_rate_bee_hive_fail_ping_time_bucket),]),
])
