{
bee_eth_backend_calls_block_number:{query:"bee_eth_backend_calls_block_number{%(selector)s}",legend:""},
bee_eth_backend_total_rpc_calls:{query:"bee_eth_backend_total_rpc_calls{%(selector)s}",legend:""},
increase_bee_eth_backend_calls_block_number:{query:"increase(bee_eth_backend_calls_block_number{%(selector)s}[$interval])",legend:"disconnects({{instance}})"},
increase_bee_eth_backend_total_rpc_calls:{query:"increase(bee_eth_backend_total_rpc_calls{%(selector)s}[$interval])",legend:"blocklisted_peers({{instance}})"},
}
