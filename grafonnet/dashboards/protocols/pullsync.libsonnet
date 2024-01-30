local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/protocols/pullsync.libsonnet';
panels.dashboard.base(title='PullSync', tags=['protocols'], panels=[
  panels.timeseries.base(title='LiveSync Iterations', description='', targets=[query.base(queries.bee_puller_worker),]),
  panels.timeseries.short(title='received offers', description='', targets=[query.base(queries.rate_bee_pullsync_chunks_offered),]),
  panels.timeseries.percentunit(title='Error Rate', description='', targets=[query.base(queries.rate_bee_puller_worker_errors),]),
  panels.timeseries.base(title='Last timestamp of synced bin', description='', targets=[query.base(queries.rate_bee_pullsync_last_received),]),
  panels.timeseries.short(title='received offers', description='', targets=[query.base(queries.rate_bee_pullsync_chunks_offered),]),
  panels.timeseries.short(title='stored chunks', description='', targets=[query.base(queries.rate_bee_puller_synced_chunks),]),
  panels.timeseries.base(title='Iterations', description='', targets=[query.base(queries.rate_bee_puller_worker_iterations),]),
  panels.timeseries.short(title='sent chunks offers', description='', targets=[query.base(queries.rate_bee_pullsync_chunks_sent),]),
  panels.timeseries.base(title='Last timestamp of synced bin', description='', targets=[query.base(queries.sum_rate_bee_pullsync_last_received),]),
  panels.timeseries.base(title='Received Zero Address Chunks', description='', targets=[query.base(queries.rate_bee_pullsync_received_zero_address),]),
])
