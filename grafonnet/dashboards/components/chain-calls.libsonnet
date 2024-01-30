local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/chain-calls.libsonnet';
panels.dashboard.base(title='Chain calls', tags=['components'], panels=[
  panels.stat.base(title='Total RPC calls', description='', targets=[query.base(queries.bee_eth_backend_total_rpc_calls),]),
  panels.stat.base(title='Calls to eth_blockNumber count', description='', targets=[query.base(queries.bee_eth_backend_calls_block_number),]),
  panels.timeseries.base(title='RPC calls', description='', targets=[query.base(queries.increase_bee_eth_backend_total_rpc_calls),]),
  panels.timeseries.base(title='Get Block Number calls', description='', targets=[query.base(queries.increase_bee_eth_backend_calls_block_number),]),
])
