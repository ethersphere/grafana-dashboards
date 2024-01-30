{
bee_info:{query:"bee_info{%(selector)s}",legend:"{{version}}"},
bee_kademlia_current_depth:{query:"bee_kademlia_current_depth{%(selector)s}",legend:"depth {{instance}}"},
bee_kademlia_current_radius:{query:"bee_kademlia_current_radius{%(selector)s}",legend:"depth {{instance}}"},
bee_kademlia_currently_connected_peers:{query:"bee_kademlia_currently_connected_peers{%(selector)s}",legend:"depth {{instance}}"},
bee_kademlia_currently_known_peers:{query:"bee_kademlia_currently_known_peers{%(selector)s}",legend:"depth {{instance}}"},
bee_kademlia_total_inbound_connections:{query:"bee_kademlia_total_inbound_connections{%(selector)s}",legend:"{{instance}}"},
bee_kademlia_total_outbound_connections:{query:"bee_kademlia_total_outbound_connections{%(selector)s}",legend:"{{instance}}"},
go_info:{query:"go_info{%(selector)s}",legend:"{{version}}"},
kube_pod_container_status_restarts_total:{query:"kube_pod_container_status_restarts_total{job=\"kube-state-metrics\",%(selector)s,container=~\"bee\"}",legend:""},
}
