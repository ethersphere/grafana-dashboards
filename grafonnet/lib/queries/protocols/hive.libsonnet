{
increase_bee_hive_reachable_peers_count:{query:"increase(bee_hive_reachable_peers_count{%(selector)s}[$interval])+increase(bee_hive_unreachable_peers_count{%(selector)s}[$interval])",legend:"{{instance}} unreachable peers"},
increase_bee_hive_unreachable_peers_count:{query:"increase(bee_hive_unreachable_peers_count{%(selector)s}[$interval])/(increase(bee_hive_reachable_peers_count{%(selector)s}[$interval])+increase(bee_hive_unreachable_peers_count{%(selector)s}[$interval]))",legend:"{{instance}}"},
sum_rate_bee_hive_fail_ping_time_bucket:{query:"sum(rate(bee_hive_fail_ping_time_bucket{%(selector)s}[$interval]))by(le)",legend:"{{le}}"},
sum_rate_bee_hive_ping_time_bucket:{query:"sum(rate(bee_hive_ping_time_bucket{%(selector)s}[$interval]))by(le)",legend:"{{le}}"},
}
