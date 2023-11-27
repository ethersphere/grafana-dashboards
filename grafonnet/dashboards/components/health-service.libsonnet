local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/health-service.libsonnet';
panels.dashboard.base(title='Health Service', tags=['components'], panels=[
  panels.timeseries.percentunit(title='Healthy Rate', description='', targets=[query.base(queries.increase_bee_salud_healthy),]),
  panels.timeseries.base(title='P80 Connections', description='', targets=[query.base(queries.bee_salud_pconns),]),
  panels.timeseries.base(title='Avg Dur', description='', targets=[query.base(queries.bee_salud_dur),]),
  panels.timeseries.base(title='P80 Dur', description='', targets=[query.base(queries.bee_salud_pdur),]),
  panels.timeseries.base(title='Network Radius', description='', targets=[query.base(queries.bee_salud_network_radius),]),
  panels.timeseries.base(title='NHood Radius', description='', targets=[query.base(queries.bee_salud_neighborhood_radius),]),
  panels.gauge.base(title='Batch commitment', description='', targets=[query.base(queries.bee_salud_batch_commitment),]),
])
