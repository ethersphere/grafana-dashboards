local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/disk.libsonnet';
panels.dashboard.base(title='Disk', tags=['components'], panels=[
  panels.stat.bytes(title='Capacity', description='', targets=[query.base(queries.kubelet_volume_stats_capacity_bytes_ebs),query.base(queries.kubelet_volume_stats_capacity_bytes_local),]),
  panels.timeseries.percentunit(title='Usage (Localstore)', description='', targets=[query.base(queries.kubelet_volume_stats_used_bytes_local),]),
  panels.timeseries.percentunit(title='Usage StateStore', description='', targets=[query.base(queries.kubelet_volume_stats_used_bytes_ebs),]),
])
