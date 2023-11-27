{
histogram_quantile_0_99_sum_rate_bee_retrieval_retrieve_chunk_time_bucket:{query:"histogram_quantile(0.99,sum(rate(bee_retrieval_retrieve_chunk_time_bucket{%(selector)s}[$interval]))by(le,instance))",legend:"{{instance}}"},
increase_bee_retrieval_invalid_chunk_retrieved:{query:"increase(bee_retrieval_invalid_chunk_retrieved{%(selector)s}[$interval])",legend:"{{instance}}"},
increase_bee_retrieval_peer_request_count:{query:"increase(bee_retrieval_peer_request_count{%(selector)s}[$interval])/increase(bee_retrieval_request_count{%(selector)s}[$interval])",legend:"{{instance}}"},
increase_bee_retrieval_request_duration_time_sum:{query:"increase(bee_retrieval_request_duration_time_sum{%(selector)s}[$interval])/increase(bee_retrieval_request_duration_time_count{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_retrieval_peer_request_count:{query:"rate(bee_retrieval_peer_request_count{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_retrieval_request_count:{query:"rate(bee_retrieval_request_count{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_retrieval_request_failure_count:{query:"rate(bee_retrieval_request_failure_count{%(selector)s}[$interval])/rate(bee_retrieval_request_count{%(selector)s}[$interval])",legend:"{{instance}}"},
rate_bee_retrieval_total_retrieved:{query:"rate(bee_retrieval_total_retrieved{%(selector)s}[$interval])",legend:"{{instance}}"},
}
