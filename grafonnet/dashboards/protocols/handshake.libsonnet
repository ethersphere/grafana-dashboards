local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/protocols/handshake.libsonnet';
panels.dashboard.base(title='Handshake', tags=['protocols'], panels=[
  panels.stat.percentunit(title='SYN-ACK TX Fail Rate', description='', targets=[query.base(queries.bee_handshake_syn_ack_tx),], width=24),
  panels.stat.percentunit(title='ACK RX Fail Rate', description='', targets=[query.base(queries.bee_handshake_ack_rx),], width=24),
  panels.stat.percentunit(title='SYN RX Fail Rate', description='', targets=[query.base(queries.bee_handshake_syn_rx),], width=24),
])
