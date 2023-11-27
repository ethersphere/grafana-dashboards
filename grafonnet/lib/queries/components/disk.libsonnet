{
kubelet_volume_stats_capacity_bytes_ebs:{query:"kubelet_volume_stats_capacity_bytes{%(selector)s,persistentvolumeclaim=~\"data-$instance\"}",legend:"{{persistentvolumeclaim}}"},
kubelet_volume_stats_capacity_bytes_local:{query:"kubelet_volume_stats_capacity_bytes{%(selector)s,persistentvolumeclaim=~\"localstore-$instance\"}",legend:"{{persistentvolumeclaim}}"},
kubelet_volume_stats_used_bytes_ebs:{query:"kubelet_volume_stats_used_bytes{%(selector)s,persistentvolumeclaim=~\"data-$instance\"}/kubelet_volume_stats_capacity_bytes{%(selector)s,persistentvolumeclaim=~\"data-$instance\"}",legend:"{{persistentvolumeclaim}}"},
kubelet_volume_stats_used_bytes_local:{query:"kubelet_volume_stats_used_bytes{%(selector)s,persistentvolumeclaim=~\"localstore-$instance\"}/kubelet_volume_stats_capacity_bytes{%(selector)s,persistentvolumeclaim=~\"localstore-$instance\"}",legend:"{{persistentvolumeclaim}}"},
}
