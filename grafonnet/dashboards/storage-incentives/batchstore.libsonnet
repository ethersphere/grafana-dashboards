local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/storage-incentives/batchstore.libsonnet';
panels.dashboard.base(title='Batch store', tags=['storage-incentives'], panels=[
  panels.gauge.base(title='Radius', description='', targets=[query.base(queries.bee_batchstore_radius),]),
  panels.gauge.base(title='Storage radius', description='', targets=[query.base(queries.bee_batchstore_storage_radius),]),
  panels.timeseries.base(title='Radius', description='', targets=[query.base(queries.bee_batchstore_radius),]),
  panels.timeseries.base(title='Storage radius', description='', targets=[query.base(queries.bee_batchstore_storage_radius),]),
])
