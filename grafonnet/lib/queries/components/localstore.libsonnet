{
bee_localstore_cache_size:{query:"bee_localstore_cache_size{%(selector)s}",legend:"{{instance}}"},
bee_localstore_evicted_count:{query:"bee_localstore_evicted_count{%(selector)s}",legend:"{{instance}}"},
bee_localstore_expired_batch_count:{query:"bee_localstore_expired_batch_count{%(selector)s}",legend:"{{instance}}"},
bee_localstore_expired_count:{query:"bee_localstore_expired_count{%(selector)s}",legend:"{{instance}}"},
bee_localstore_reserve_missing_batch:{query:"bee_localstore_reserve_missing_batch{%(selector)s}",legend:"{{instance}}"},
bee_localstore_reserve_size:{query:"bee_localstore_reserve_size{%(selector)s}",legend:"{{instance}}"},
bee_localstore_reserve_size_within_radius:{query:"bee_localstore_reserve_size_within_radius{%(selector)s}",legend:"{{instance}}"},
bee_localstore_storage_radius:{query:"bee_localstore_storage_radius{%(selector)s}",legend:"{{instance}}"},
increase_bee_localstore_leveldb_stats_sum_alive_iterators:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"alive_iterators\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_alive_snapshots:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"alive_snapshots\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_block_cache_size:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"block_cache_size\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_io_read:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"io_read\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_io_write:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"io_write\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_level_0_comp:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_0_comp\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_level_0_duration:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_0_duration\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_0_read:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_0_read\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_0_size:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_0_size\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_0_tables_count:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_0_tables_count\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_0_write:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_0_write\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_1_duration:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_1_duration\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_1_read:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_1_read\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_1_size:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_1_size\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_1_tables_count:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_1_tables_count\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_1_write:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_1_write\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_2_duration:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_2_duration\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_2_read:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_2_read\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_2_size:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_2_size\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_2_tables_count:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_2_tables_count\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_level_2_write:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"level_2_write\"}[$__rate_interval])",legend:"{{pod}}->{{counter}}"},
increase_bee_localstore_leveldb_stats_sum_mem_comp:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"mem_comp\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_non_level_0_comp:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"non_level_0_comp\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_opened_tables_count:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"opened_tables_count\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_seek_comp:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"seek_comp\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_write_delay_count:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"write_delay_count\"}[$__rate_interval])",legend:"{{pod}}"},
increase_bee_localstore_leveldb_stats_sum_write_delay_duration:{query:"increase(bee_localstore_leveldb_stats_sum{%(selector)s,counter=\"write_delay_duration\"}[$__rate_interval])",legend:"{{pod}}"},
rate_bee_localstore_evicted_count:{query:"rate(bee_localstore_evicted_count{%(selector)s}[$__rate_interval])",legend:"{{instance}}"},
rate_bee_localstore_expired_count:{query:"rate(bee_localstore_expired_count{%(selector)s}[$__rate_interval])",legend:"{{instance}}"},
rate_bee_localstore_over_cap_trigger_count:{query:"rate(bee_localstore_over_cap_trigger_count{%(selector)s}[$__rate_interval])",legend:"{{instance}}"},
sum_bee_localstore_method_calls_cachestore:{query:"sum(bee_localstore_method_calls{%(selector)s,component=\"cachestore\",status=\"failure\"})by(method)/sum(bee_localstore_method_calls{%(selector)s,component=\"cachestore\"})by(method)",legend:"{{method}}"},
sum_bee_localstore_method_calls_netstore:{query:"sum(bee_localstore_method_calls{%(selector)s,component=\"netstore\",status=\"failure\"})by(method)/sum(bee_localstore_method_calls{%(selector)s,component=\"netstore\"})by(method)",legend:"{{method}}"},
sum_bee_localstore_method_calls_pinstore:{query:"sum(bee_localstore_method_calls{%(selector)s,component=\"pinstore\",status=\"failure\"})by(method)/sum(bee_localstore_method_calls{%(selector)s,component=\"pinstore\"})by(method)",legend:"{{method}}"},
sum_bee_localstore_method_calls_reserve:{query:"sum(bee_localstore_method_calls{%(selector)s,component=\"reserve\",status=\"failure\"})by(method)/sum(bee_localstore_method_calls{%(selector)s,component=\"reserve\"})by(method)",legend:"{{method}}"},
sum_bee_storage_chunk_store_calls:{query:"sum(bee_storage_chunk_store_calls{%(selector)s,status=\"failure\"})by(method)/sum(bee_storage_chunk_store_calls{%(selector)s})by(method)",legend:"{{method}}"},
sum_bee_storage_index_store_calls:{query:"sum(bee_storage_index_store_calls{%(selector)s,status=\"failure\"})by(method)/sum(bee_storage_index_store_calls{%(selector)s})by(method)",legend:"{{method}}"},
sum_increase_bee_localstore_method_calls_duration_sum_cachestore:{query:"sum(increase(bee_localstore_method_calls_duration_sum{%(selector)s,component=\"cachestore\"}[$interval]))by(method)/sum(increase(bee_localstore_method_calls_duration_count{%(selector)s,component=\"cachestore\"}[$interval]))by(method)",legend:"{{method}}"},
sum_increase_bee_localstore_method_calls_duration_sum_netstore:{query:"sum(increase(bee_localstore_method_calls_duration_sum{%(selector)s,component=\"netstore\"}[$interval]))by(method)/sum(increase(bee_localstore_method_calls_duration_count{%(selector)s,component=\"netstore\"}[$interval]))by(method)",legend:"{{method}}"},
sum_increase_bee_localstore_method_calls_duration_sum_pinstore:{query:"sum(increase(bee_localstore_method_calls_duration_sum{%(selector)s,component=\"pinstore\"}[$interval]))by(method)/sum(increase(bee_localstore_method_calls_duration_count{%(selector)s,component=\"pinstore\"}[$interval]))by(method)",legend:"{{method}}"},
sum_increase_bee_localstore_method_calls_duration_sum_reserve:{query:"sum(increase(bee_localstore_method_calls_duration_sum{%(selector)s,component=\"reserve\"}[$interval]))by(method)/sum(increase(bee_localstore_method_calls_duration_count{%(selector)s,component=\"reserve\"}[$interval]))by(method)",legend:"{{method}}"},
sum_increase_bee_storage_chunk_store_calls_duration_sum:{query:"sum(increase(bee_storage_chunk_store_calls_duration_sum{%(selector)s}[$interval]))by(method)/sum(increase(bee_storage_chunk_store_calls_duration_count{%(selector)s}[$interval]))by(method)",legend:"{{method}}"},
sum_increase_bee_storage_index_store_calls_duration_sum:{query:"sum(increase(bee_storage_index_store_calls_duration_sum{%(selector)s}[$interval]))by(method)/sum(increase(bee_storage_index_store_calls_duration_count{%(selector)s}[$interval]))by(method)",legend:"__auto"},
sum_increase_bee_storage_tx_total_duration_sum:{query:"sum(increase(bee_storage_tx_total_duration_sum{%(selector)s}[$interval]))/sum(increase(bee_storage_tx_total_duration_count{%(selector)s}[$interval]))",legend:"{{pod}}"},
}
