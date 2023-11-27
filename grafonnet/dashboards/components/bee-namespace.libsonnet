local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/bee-namespace.libsonnet';
panels.dashboard.base(title='Bee (Namespace)', tags=['components'], panels=[
  panels.row.base(title='Headlines'),
  panels.stat.base(title='libp2p created connection per bee node', description='', targets=[query.base(queries.sum_bee_libp2p_created_connection_count),]),
  panels.stat.base(title='libp2p handled connection per bee node', description='', targets=[query.base(queries.sum_bee_libp2p_handled_connection_count),]),
  panels.stat.s(title='average uptime per bee node', description='', targets=[query.base(queries.sum_time___bee_process_start_time_seconds),]),
  panels.stat.short(title='average restarts per bee node', description='', targets=[query.base(queries.sum_kube_pod_container_status_restarts_total),]),
  panels.stat.base(title='bee version (bee-0)', description='', targets=[query.base(queries.bee_info),]),
  panels.stat.base(title='go version (bee-0)', description='', targets=[query.base(queries.go_info),]),
  panels.row.base(title='Logs'),
  panels.timeseries.base(title='error logs increase over 1h', description='', targets=[query.base(queries.increase_bee_log_error_count),]),
  panels.table.base(title='logs', description='', targets=[query.base(queries.sum_bee_log_trace_count),query.base(queries.sum_bee_log_debug_count),query.base(queries.sum_bee_log_info_count),query.base(queries.sum_bee_log_warn_count),query.base(queries.sum_bee_log_error_count),]),
  panels.row.base(title='Resources'),
  panels.row.base(title='API'),
  panels.timeseries.base(title='api requests increase over 1m', description='', targets=[query.base(queries.increase_bee_api_request_count),]),
  panels.table.base(title='api', description='', targets=[query.base(queries.sum_bee_api_response_duration_seconds_sum),query.base(queries.sum_bee_api_request_count),]),
  panels.row.base(title='Storage'),
  panels.row.base(title='Runtime'),
  panels.timeseries.base(title='goroutines increase over 1h', description='', targets=[query.base(queries.increase_go_goroutines),]),
  panels.timeseries.base(title='gc cpu fraction increase over 1h', description='', targets=[query.base(queries.increase_go_memstats_gc_cpu_fraction),]),
  panels.table.base(title='runtime', description='', targets=[query.base(queries.sum_go_goroutines),query.base(queries.sum_go_memstats_gc_cpu_fraction),query.base(queries.sum_go_gc_duration_seconds_count),]),
  panels.row.base(title='Accounting'),
  panels.row.base(title='Retrieval'),
])
