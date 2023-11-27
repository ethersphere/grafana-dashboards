{
beekeeper_check_pingpong_rtt_duration_seconds:{query:"beekeeper_check_pingpong_rtt_duration_seconds{job=\"$job\"}",legend:"{{ node }} -> {{ peer }}"},
beekeeper_check_pingpong_rtt_seconds_count:{query:"beekeeper_check_pingpong_rtt_seconds_count{job=\"$job\"}",legend:""},
beekeeper_check_pingpong_rtt_seconds_sum:{query:"beekeeper_check_pingpong_rtt_seconds_sum{job=\"$job\"}",legend:""},
beekeeper_check_pushsync_chunk_upload_duration_seconds:{query:"beekeeper_check_pushsync_chunk_upload_duration_seconds{job=\"$job\"}",legend:"{{ node }} ( {{ chunk }} )"},
beekeeper_check_pushsync_chunk_upload_seconds_count:{query:"beekeeper_check_pushsync_chunk_upload_seconds_count{job=\"$job\"}",legend:""},
beekeeper_check_pushsync_chunk_upload_seconds_sum:{query:"beekeeper_check_pushsync_chunk_upload_seconds_sum{job=\"$job\"}",legend:""},
beekeeper_check_pushsync_chunks_not_synced_count:{query:"beekeeper_check_pushsync_chunks_not_synced_count{job=\"$job\"}",legend:"{{ node }}"},
beekeeper_check_pushsync_chunks_synced_count:{query:"beekeeper_check_pushsync_chunks_synced_count{job=\"$job\"}",legend:"{{ node }}"},
beekeeper_check_pushsync_chunks_uploaded_count:{query:"beekeeper_check_pushsync_chunks_uploaded_count{job=\"$job\"}",legend:"{{ node }}"},
beekeeper_check_retrieval_chunk_download_duration_seconds:{query:"beekeeper_check_retrieval_chunk_download_duration_seconds{job=\"$job\"}",legend:"{{ node }} ( {{ chunk }} )"},
beekeeper_check_retrieval_chunk_download_seconds_count:{query:"beekeeper_check_retrieval_chunk_download_seconds_count{job=\"$job\"}",legend:""},
beekeeper_check_retrieval_chunk_download_seconds_sum:{query:"beekeeper_check_retrieval_chunk_download_seconds_sum{job=\"$job\"}",legend:""},
beekeeper_check_retrieval_chunk_upload_duration_seconds:{query:"beekeeper_check_retrieval_chunk_upload_duration_seconds{job=\"$job\"}",legend:"{{ node }} ( {{ chunk }} )"},
beekeeper_check_retrieval_chunk_upload_seconds_count:{query:"beekeeper_check_retrieval_chunk_upload_seconds_count{job=\"$job\"}",legend:""},
beekeeper_check_retrieval_chunk_upload_seconds_sum:{query:"beekeeper_check_retrieval_chunk_upload_seconds_sum{job=\"$job\"}",legend:""},
beekeeper_check_retrieval_chunks_downloaded_count:{query:"beekeeper_check_retrieval_chunks_downloaded_count{job=\"$job\"}",legend:"{{ node }}"},
beekeeper_check_retrieval_chunks_not_retrieved_count:{query:"beekeeper_check_retrieval_chunks_not_retrieved_count{job=\"$job\"}",legend:"{{ node }}"},
beekeeper_check_retrieval_chunks_retrieved_count:{query:"beekeeper_check_retrieval_chunks_retrieved_count{job=\"$job\"}",legend:"{{ node }}"},
beekeeper_check_retrieval_chunks_uploaded_count:{query:"beekeeper_check_retrieval_chunks_uploaded_count{job=\"$job\"}",legend:"{{ node }}"},
increase_beekeeper_check_pingpong_rtt_seconds_bucket:{query:"increase(beekeeper_check_pingpong_rtt_seconds_bucket{job=\"$job\"}[$interval])",legend:"{{ le }}"},
rate_beekeeper_check_pushsync_chunk_upload_seconds_bucket:{query:"rate(beekeeper_check_pushsync_chunk_upload_seconds_bucket{job=\"$job\"}[$interval])",legend:"{{ le }}"},
rate_beekeeper_check_retrieval_chunk_download_seconds_bucket:{query:"rate(beekeeper_check_retrieval_chunk_download_seconds_bucket{job=\"$job\"}[$interval])",legend:"{{ le }}"},
rate_beekeeper_check_retrieval_chunk_upload_seconds_bucket:{query:"rate(beekeeper_check_retrieval_chunk_upload_seconds_bucket{job=\"$job\"}[$interval])",legend:"{{ le }}"},
}
