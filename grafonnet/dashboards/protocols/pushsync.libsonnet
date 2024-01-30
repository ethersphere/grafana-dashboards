local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/protocols/pushsync.libsonnet';
panels.dashboard.base(title='PushSync', tags=['protocols'], panels=[
  panels.row.base(title='Sending'),
  panels.timeseries.s(title='P95 Push to Peer', description='', targets=[query.base(queries.histogram_quantile_0_95_sum_rate_bee_pushsync_push_peer_time_bucket),]),
  panels.timeseries.s(title='send time - failure', description='', targets=[query.base(queries.increase_bee_pushsync_push_peer_time_sum_failure),]),
  panels.timeseries.s(title='send time - success', description='', targets=[query.base(queries.increase_bee_pushsync_push_peer_time_sum_success),]),
  panels.timeseries.percentunit(title='Originator Error %', description='', targets=[query.base(queries.increase_bee_pushsync_total_outgoing_errors),]),
  panels.timeseries.percentunit(title='attempt error %', description='', targets=[query.base(queries.increase_bee_pushsync_total_failed_send_attempts),]),
  panels.timeseries.base(title='sends per second', description='', targets=[query.base(queries.rate_bee_pushsync_total_send_attempts),]),
  panels.timeseries.percentunit(title='shallow receipt %', description='', targets=[query.base(queries.increase_bee_pusher_shallow_receipt),]),
  panels.timeseries.base(title='Receipt Depths', description='', targets=[query.base(queries.sum_rate_bee_pusher_receipt_depth),]),
  panels.row.base(title='Receiving'),
  panels.timeseries.base(title='incoming deliveries per second', description='', targets=[query.base(queries.rate_bee_pushsync_total_received),]),
  panels.timeseries.percentunit(title='handler error %', description='', targets=[query.base(queries.increase_bee_pushsync_total_handler_errors),]),
  panels.timeseries.s(title='Handler Time  - failure ', description='', targets=[query.base(queries.increase_bee_pushsync_total_handler_time_sum_failure),]),
  panels.timeseries.s(title='Handler Time  - success', description='', targets=[query.base(queries.increase_bee_pushsync_total_handler_time_sum_success),]),
  panels.timeseries.s(title='Stamp Validation (s)', description='', targets=[query.base(queries.sum_increase_bee_pushsync_stamp_validation_time_sum),]),
  panels.timeseries.percentunit(title='Invalid Stamps  %', description='', targets=[query.base(queries.increase_bee_pushsync_invalid_stamps),]),
  panels.stat.percentunit(title='Forwarder %', description='', targets=[query.base(queries.bee_pushsync_forwarder),]),
  panels.stat.percentunit(title='Storer %', description='', targets=[query.base(queries.bee_pushsync_storer),]),
])
