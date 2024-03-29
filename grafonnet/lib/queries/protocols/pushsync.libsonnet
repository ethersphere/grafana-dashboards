{
histogram_quantile_0_95_sum_rate_bee_pushsync_push_peer_time_bucket:{query:"histogram_quantile(0.95,sum(rate(bee_pushsync_push_peer_time_bucket{%(selector)s}[$interval]))by(le,instance))",legend:"{{instance}}"},
bee_pushsync_forwarder:{query:"bee_pushsync_forwarder{%(selector)s}/bee_pushsync_total_received{%(selector)s}",legend:""},
bee_pushsync_storer:{query:"bee_pushsync_storer{%(selector)s}/bee_pushsync_total_received{%(selector)s}",legend:""},
increase_bee_pusher_shallow_receipt:{query:"increase(bee_pusher_shallow_receipt{%(selector)s}[$interval])/(increase(bee_pushsync_total_outgoing{%(selector)s}[$interval])-increase(bee_pushsync_total_outgoing_errors{%(selector)s}[$interval]))",legend:"{{instance}}"},
increase_bee_pushsync_invalid_stamps:{query:"increase(bee_pushsync_invalid_stamps{%(selector)s}[$interval])/increase(bee_pushsync_total_received{%(selector)s}[$interval])",legend:"{{instance}}"},
increase_bee_pushsync_push_peer_time_sum_failure:{query:"increase(bee_pushsync_push_peer_time_sum{%(selector)s,status=\"failure\"}[$interval])/increase(bee_pushsync_push_peer_time_count{%(selector)s,status=\"failure\"}[$interval])",legend:"{{instance}}"},
increase_bee_pushsync_push_peer_time_sum_success:{query:"increase(bee_pushsync_push_peer_time_sum{%(selector)s,status=\"success\"}[$interval])/increase(bee_pushsync_push_peer_time_count{%(selector)s,status=\"success\"}[$interval])",legend:"{{instance}}"},
increase_bee_pushsync_total_failed_send_attempts:{query:"increase(bee_pushsync_total_failed_send_attempts{%(selector)s}[$interval])/increase(bee_pushsync_total_send_attempts{%(selector)s}[$interval])",legend:"{{instance}}"},
increase_bee_pushsync_total_handler_errors:{query:"increase(bee_pushsync_total_handler_errors{%(selector)s}[$interval])/increase(bee_pushsync_total_received{%(selector)s}[$interval])",legend:"{{instance}}"},
increase_bee_pushsync_total_handler_time_sum_failure:{query:"increase(bee_pushsync_total_handler_time_sum{%(selector)s,status=\"failure\"}[$interval])/increase(bee_pushsync_total_handler_time_count{%(selector)s,status=\"failure\"}[$interval])",legend:"failure {{instance}}"},
increase_bee_pushsync_total_handler_time_sum_success:{query:"increase(bee_pushsync_total_handler_time_sum{%(selector)s,status=\"success\"}[$interval])/increase(bee_pushsync_total_handler_time_count{%(selector)s,status=\"success\"}[$interval])",legend:"success {{instance}}"},
increase_bee_pushsync_total_outgoing_errors:{query:"increase(bee_pushsync_total_outgoing_errors{%(selector)s}[$interval])/increase(bee_pushsync_total_outgoing{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_pushsync_total_received:{query:"rate(bee_pushsync_total_received{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_pushsync_total_send_attempts:{query:"rate(bee_pushsync_total_send_attempts{%(selector)s}[$interval])",legend:"{{instance}}"},
sum_increase_bee_pushsync_stamp_validation_time_sum:{query:"sum(increase(bee_pushsync_stamp_validation_time_sum{%(selector)s}[$interval]))by(instance)/sum(increase(bee_pushsync_stamp_validation_time_count{%(selector)s}[$interval]))by(instance)",legend:"{{instance}}"},
sum_rate_bee_pusher_receipt_depth:{query:"sum(rate(bee_pusher_receipt_depth{%(selector)s}[$interval]))by(depth)",legend:"{{depth}} {{instance}}"},
}
