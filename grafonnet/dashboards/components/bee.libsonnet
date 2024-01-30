local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/bee.libsonnet';
panels.dashboard.base(title='Bee', tags=['components'], panels=[
  panels.stat.base(title='libp2p created connection', description='', targets=[query.base(queries.bee_libp2p_created_connection_count),]),
  panels.stat.base(title='libp2p handled connection', description='', targets=[query.base(queries.bee_libp2p_handled_connection_count),]),
  panels.stat.s(title='uptime', description='', targets=[query.base(queries.time_bee_process_start_time_seconds),]),
  panels.stat.short(title='restarts', description='', targets=[query.base(queries.kube_pod_container_status_restarts_total),]),
  panels.stat.base(title='bee version', description='', targets=[query.base(queries.bee_info),]),
  panels.stat.string(title='reachability', description='', targets=[query.base(queries.bee_kademlia_reachability_status),]),
  panels.stat.base(title='go version', description='', targets=[query.base(queries.go_info),]),
  panels.stat.base(title='panics (last 24h)', description='', targets=[query.base(queries.sum_count_over_time_panic),]),
  panels.timeseries.short(title='log messages', description='', targets=[query.base(queries.increase_bee_log_log_trace_count),query.base(queries.increase_bee_log_debug_count),query.base(queries.increase_bee_log_info_count),query.base(queries.increase_bee_log_warn_count),query.base(queries.increase_bee_log_error_count),]),
  panels.stat.bytes(title='Storage space capacity', description='', targets=[query.base(queries.kubelet_volume_stats_capacity_bytes_ebs),query.base(queries.kubelet_volume_stats_capacity_bytes_local),]),
  panels.row.base(title='System'),
  panels.gauge.percentunit(title='Storage space in use', description='', targets=[query.base(queries.kubelet_volume_stats_used_bytes_ebs),query.base(queries.kubelet_volume_stats_used_bytes_local),]),
  panels.row.base(title='Runtime'),
  panels.timeseries.short(title='goroutines', description='', targets=[query.base(queries.go_goroutines),]),
  panels.timeseries.base(title='memory usage', description='', targets=[query.base(queries.go_memstats_sys_bytes),query.base(queries.go_memstats_alloc_bytes),]),
  panels.timeseries.base(title='gc cpu fraction', description='', targets=[query.base(queries.go_memstats_gc_cpu_fraction),]),
  panels.timeseries.base(title='gc rate (1m)', description='', targets=[query.base(queries.increase_go_gc_duration_seconds_count),]),
])
