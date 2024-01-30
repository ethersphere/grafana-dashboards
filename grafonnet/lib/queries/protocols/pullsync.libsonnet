{
bee_puller_worker:{query:"bee_puller_worker{%(selector)s}-bee_puller_worker_done{%(selector)s}",legend:"{{instance}}"},
rate_bee_puller_synced_chunks:{query:"rate(bee_puller_synced_chunks{%(selector)s}[$interval])",legend:"{{instance}}-{{type}}"},
rate_bee_puller_worker_errors:{query:"rate(bee_puller_worker_errors{%(selector)s}[$interval])/rate(bee_puller_worker_iterations{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_puller_worker_iterations:{query:"rate(bee_puller_worker_iterations{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_pullsync_chunks_offered:{query:"rate(bee_pullsync_chunks_offered{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_pullsync_chunks_sent:{query:"rate(bee_pullsync_chunks_sent{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_pullsync_last_received:{query:"rate(bee_pullsync_last_received{%(selector)s}[$interval])",legend:"bin {{bin}}"},
rate_bee_pullsync_received_zero_address:{query:"rate(bee_pullsync_received_zero_address{%(selector)s}[$interval])",legend:"{{instance}}"},
sum_rate_bee_pullsync_last_received:{query:"sum(rate(bee_pullsync_last_received{%(selector)s}[$interval]))by(bin)",legend:"bin {{bin}}"},
}
