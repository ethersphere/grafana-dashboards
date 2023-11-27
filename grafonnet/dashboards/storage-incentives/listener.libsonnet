local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/storage-incentives/listener.libsonnet';
panels.dashboard.base(title='Listener', tags=['storage-incentives'], panels=[
  panels.stat.base(title='Backend calls', description='', targets=[query.base(queries.bee_postage_listener_backend_calls),]),
  panels.stat.base(title='Backend errors', description='', targets=[query.base(queries.bee_postage_listener_backend_errors),]),
  panels.stat.base(title='Events', description='', targets=[query.base(queries.increase_bee_postage_listener_created_events),query.base(queries.increase_bee_postage_listener_depth_events),query.base(queries.increase_bee_postage_listener_price_events),query.base(queries.increase_bee_postage_listener_topup_events),]),
  panels.timeseries.base(title='events processed', description='', targets=[query.base(queries.increase_bee_postage_listener_events_processed),]),
  panels.timeseries.base(title='Pages processed', description='', targets=[query.base(queries.increase_bee_postage_listener_pages_processed),]),
  panels.timeseries.base(title='Event processing time', description='', targets=[query.base(queries.increase_bee_postage_listener_event_duration),]),
])
