{
increase_bee_libp2p_closed_stream_count:{query:"increase(bee_libp2p_closed_stream_count{%(selector)s}[$interval])",legend:"disconnects({{instance}})"},
increase_bee_libp2p_created_stream_count:{query:"increase(bee_libp2p_created_stream_count{%(selector)s}[$interval])",legend:"peers({{instance}})"},
increase_bee_libp2p_handled_stream_count:{query:"increase(bee_libp2p_handled_stream_count{%(selector)s}[$interval])",legend:"peers({{instance}})"},
increase_bee_libp2p_library_reported_closed_stream_count:{query:"increase(bee_libp2p_library_reported_closed_stream_count{%(selector)s}[$interval])",legend:"connects({{instance}})"},
increase_bee_libp2p_library_reported_created_stream_count:{query:"increase(bee_libp2p_library_reported_created_stream_count{%(selector)s}[$interval])",legend:"peers({{instance}})"},
increase_bee_libp2p_stream_handler_error_reset_count:{query:"increase(bee_libp2p_stream_handler_error_reset_count{%(selector)s}[$interval])",legend:"peers_err({{instance}})"},
increase_bee_libp2p_stream_handler_error_reset_count_divided:{query:"increase(bee_libp2p_stream_handler_error_reset_count{%(selector)s}[$interval])/increase(bee_libp2p_handled_stream_count{%(selector)s}[$interval])",legend:"peers({{instance}})"},
increase_bee_libp2p_stream_reset_count:{query:"increase(bee_libp2p_stream_reset_count{%(selector)s}[$interval])",legend:""},
}