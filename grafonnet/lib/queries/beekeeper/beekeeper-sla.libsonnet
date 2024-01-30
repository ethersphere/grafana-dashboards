{
sum_increase_beekeeper_check_data_durability_chunk_download_errors_1:{query:"1.0-(sum(increase(beekeeper_check_data_durability_chunk_download_errors{job=\"$job\"}[$__range]))/sum(increase(beekeeper_check_data_durability_chunk_download_attempts{job=\"$job\"}[$__range])))",legend:"{{ref}}"},
sum_increase_beekeeper_check_data_durability_file_download_errors:{query:"1.0-(sum(increase(beekeeper_check_data_durability_file_download_errors{job=\"$job\"}[$__range]))/sum(increase(beekeeper_check_data_durability_file_download_attempts{job=\"$job\"}[$__range])))",legend:"{{ref}}"},
beekeeper_net_avail_download_attempts_beekeeper_net_avail_download_errors_count__beekeeper_net_avail_download_attempts:{query:"(beekeeper_net_avail_download_attempts-beekeeper_net_avail_download_errors_count)/beekeeper_net_avail_download_attempts",legend:""},
beekeeper_net_avail_upload_attempts_beekeeper_net_avail_upload_errors_count__beekeeper_net_avail_upload_attempts:{query:"(beekeeper_net_avail_upload_attempts-beekeeper_net_avail_upload_errors_count)/beekeeper_net_avail_upload_attempts",legend:""},
increase_beekeeper_net_avail_download_attempts_24h_increase_beekeeper_net_avail_download_errors_count_24h__increase_beekeeper_net_avail_download_attempts_24h:{query:"(increase(beekeeper_net_avail_download_attempts[24h])-increase(beekeeper_net_avail_download_errors_count[24h]))/increase(beekeeper_net_avail_download_attempts[24h])",legend:""},
increase_beekeeper_net_avail_upload_attempts_24h_increase_beekeeper_net_avail_upload_errors_count_24h__increase_beekeeper_net_avail_upload_attempts_24h:{query:"(increase(beekeeper_net_avail_upload_attempts[24h])-increase(beekeeper_net_avail_upload_errors_count[24h]))/increase(beekeeper_net_avail_upload_attempts[24h])",legend:""},
beekeeper_check_data_durability_chunks_count:{query:"beekeeper_check_data_durability_chunks_count{job=\"$job\"}",legend:"__auto"},
beekeeper_check_longavailability_d_download_size_bytes__beekeeper_check_longavailability_d_download_duration_seconds_sum:{query:"beekeeper_check_longavailability_d_download_size_bytes/(beekeeper_check_longavailability_d_download_duration_seconds_sum{job=\"$job\"}/beekeeper_check_longavailability_d_download_duration_seconds_count{job=\"$job\"})",legend:"{{ref}}"},
beekeeper_check_longavailability_d_download_size_bytes__rate_beekeeper_check_longavailability_d_download_duration_seconds_sum:{query:"beekeeper_check_longavailability_d_download_size_bytes/(rate(beekeeper_check_longavailability_d_download_duration_seconds_sum{job=\"$job\"}[$interval])/rate(beekeeper_check_longavailability_d_download_duration_seconds_count{job=\"$job\"}[$interval]))",legend:"{{ref}}"},
beekeeper_net_avail_data_download_duration_sum:{query:"beekeeper_net_avail_data_download_duration_sum{success=\"true\"}/beekeeper_net_avail_data_download_duration_count{success=\"true\"}",legend:""},
container_memory_usage_bytes:{query:"container_memory_usage_bytes{name=~\".+beekeeper-durability.+\",container=\"beekeeper\"}",legend:"__auto"},
increase_beekeeper_net_avail_data_download_duration_sum:{query:"increase(beekeeper_net_avail_data_download_duration_sum{success=\"true\"}[$interval])/increase(beekeeper_net_avail_data_download_duration_count{success=\"true\"}[$interval])",legend:""},
rate_beekeeper_check_data_durability_chunk_download_duration_seconds_sum:{query:"rate(beekeeper_check_data_durability_chunk_download_duration_seconds_sum{job=\"$job\"}[$__range])/rate(beekeeper_check_data_durability_chunk_download_duration_seconds_count{job=\"$job\"}[$__range])",legend:"__auto"},
rate_beekeeper_check_data_durability_file_download_duration_seconds_sum:{query:"rate(beekeeper_check_data_durability_file_download_duration_seconds_sum{job=\"$job\"}[$__range])/rate(beekeeper_check_data_durability_file_download_duration_seconds_count{job=\"$job\"}[$__range])",legend:"__auto"},
sum_increase_beekeeper_check_data_durability_chunk_download_attempts:{query:"sum(increase(beekeeper_check_data_durability_chunk_download_attempts{job=\"$job\"}[$__range]))",legend:"{{ref}}"},
sum_increase_beekeeper_check_data_durability_chunk_download_errors:{query:"sum(increase(beekeeper_check_data_durability_chunk_download_errors{job=\"$job\"}[$__range]))",legend:"{{ref}}"},
sum_increase_beekeeper_check_data_durability_file_size_bytes:{query:"sum(increase(beekeeper_check_data_durability_file_size_bytes{job=\"$job\"}[$__range]))",legend:"__auto"},
}
