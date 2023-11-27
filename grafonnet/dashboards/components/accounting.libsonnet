local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/accounting.libsonnet';
panels.dashboard.base(title='Accounting', panels=[
  panels.timeseries.base(title='events', description='', targets=[query.base(queries.increase_bee_accounting_credit_events_count),query.base(queries.increase_bee_accounting_debit_events_count),]),
  panels.gauge.sci(title='totals', description='', targets=[query.base(queries.bee_accounting_total_credited_amount),query.base(queries.bee_accounting_total_debited_amount),]),
  panels.timeseries.base(title='available balance', description='', targets=[query.base(queries.bee_swap_available_balance),]),
  panels.timeseries.base(title='accounting', description='', targets=[query.base(queries.increase_bee_accounting_accounting_blocks_count),query.base(queries.increase_bee_accounting_accounting_disconnects_count),]),
  panels.timeseries.base(title='disconnects_reconnect_count', description='', targets=[query.base(queries.increase_bee_accounting_disconnects_reconnect_count),]),
  panels.timeseries.base(title='disconnects_enforce_refresh_count', description='', targets=[query.base(queries.increase_bee_accounting_disconnects_enforce_refresh_count),]),
  panels.timeseries.base(title='ghost_overdraw_count', description='', targets=[query.base(queries.increase_bee_accounting_disconnects_ghost_overdraw_count),]),
  panels.timeseries.base(title='disconnects_overdraw_count', description='', targets=[query.base(queries.increase_bee_accounting_disconnects_overdraw_count),]),
  panels.timeseries.base(title='refreshment_below_expected', description='', targets=[query.base(queries.increase_bee_accounting_refreshment_below_expected),]),
  panels.timeseries.base(title='refreshment_above_expected', description='', targets=[query.base(queries.increase_bee_accounting_refreshment_above_expected),]),
  panels.timeseries.base(title='time_out_of_sync_recent', description='', targets=[query.base(queries.increase_bee_accounting_time_out_of_sync_recent),]),
  panels.timeseries.base(title='time_out_of_sync_interval', description='', targets=[query.base(queries.increase_bee_accounting_time_out_of_sync_interval),]),
  panels.timeseries.base(title='time_out_of_sync_alleged', description='', targets=[query.base(queries.increase_bee_accounting_time_out_of_sync_alleged),]),
])
