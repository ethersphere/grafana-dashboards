{
bee_info:{query:"bee_info{%(selector)s}",legend:"{{version}}"},
bee_kademlia_reachability_status:{query:"bee_kademlia_reachability_status{%(selector)s}",legend:"{{instance}}"},
bee_libp2p_created_connection_count:{query:"bee_libp2p_created_connection_count{%(selector)s}",legend:"{{instance}}"},
bee_libp2p_handled_connection_count:{query:"bee_libp2p_handled_connection_count{%(selector)s}",legend:"{{instance}}"},
go_goroutines:{query:"go_goroutines{%(selector)s}",legend:"goroutines ({{pod}})"},
go_info:{query:"go_info{%(selector)s}",legend:"{{version}}"},
go_memstats_alloc_bytes:{query:"go_memstats_alloc_bytes{%(selector)s}",legend:"allocated ({{pod}})"},
go_memstats_gc_cpu_fraction:{query:"go_memstats_gc_cpu_fraction{%(selector)s}",legend:"({{pod}})"},
go_memstats_sys_bytes:{query:"go_memstats_sys_bytes{%(selector)s}",legend:"used ({{pod}})"},
increase_bee_log_debug_count:{query:"increase(bee_log_debug_count{%(selector)s}[$interval])",legend:"debug ({{pod}})"},
increase_bee_log_error_count:{query:"increase(bee_log_error_count{%(selector)s}[$interval])",legend:"error ({{pod}})"},
increase_bee_log_info_count:{query:"increase(bee_log_info_count{%(selector)s}[$interval])",legend:"info ({{pod}})"},
increase_bee_log_log_trace_count:{query:"increase(bee_log_log_trace_count{%(selector)s}[$interval])",legend:"traces ({{pod}})"},
increase_bee_log_warn_count:{query:"increase(bee_log_warn_count{%(selector)s}[$interval])",legend:"warn ({{pod}})"},
increase_go_gc_duration_seconds_count:{query:"increase(go_gc_duration_seconds_count{%(selector)s}[$interval])",legend:"({{pod}})"},
kube_pod_container_status_restarts_total:{query:"kube_pod_container_status_restarts_total{job=\"kube-state-metrics\",%(selector)s,container=~\"bee\"}",legend:"{{pod}}"},
kubelet_volume_stats_capacity_bytes_ebs:{query:"kubelet_volume_stats_capacity_bytes{%(selector)s,persistentvolumeclaim=~\"data-$instance\"}",legend:"statestore ({{persistentvolumeclaim}})"},
kubelet_volume_stats_capacity_bytes_local:{query:"kubelet_volume_stats_capacity_bytes{%(selector)s,persistentvolumeclaim=~\"localstore-$instance\"}",legend:"localstore ({{persistentvolumeclaim}})"},
kubelet_volume_stats_used_bytes_ebs:{query:"kubelet_volume_stats_used_bytes{%(selector)s,persistentvolumeclaim=~\"data-$instance\"}/kubelet_volume_stats_capacity_bytes{%(selector)s,persistentvolumeclaim=~\"data-$instance\"}",legend:"statestore ({{persistentvolumeclaim}})"},
kubelet_volume_stats_used_bytes_local:{query:"kubelet_volume_stats_used_bytes{%(selector)s,persistentvolumeclaim=~\"localstore-$instance\"}/kubelet_volume_stats_capacity_bytes{%(selector)s,persistentvolumeclaim=~\"localstore-$instance\"}",legend:"localstore ({{persistentvolumeclaim}})"},
sum_count_over_time_panic:{query:"sum(count_over_time({%(selector)s}|=\"panic\"[$interval]))by(pod)",legend:""},
time_bee_process_start_time_seconds:{query:"time()-bee_process_start_time_seconds{%(selector)s}",legend:"{{instance}}"},
}