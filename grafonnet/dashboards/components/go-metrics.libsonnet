local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/components/go-metrics.libsonnet';
panels.dashboard.base(title='Runtime Metrics', tags=['components'], panels=[
  panels.timeseries.base(title='Memory in Off-Heap', description='', targets=[query.base(queries.go_memstats_mspan_inuse_bytes),query.base(queries.go_memstats_mspan_sys_bytes),query.base(queries.go_memstats_mcache_inuse_bytes),query.base(queries.go_memstats_mcache_sys_bytes),query.base(queries.go_memstats_buck_hash_sys_bytes),query.base(queries.go_memstats_gc_sys_bytes),query.base(queries.go_memstats_next_gc_bytes),]),
  panels.timeseries.base(title='Memory in Heap', description='', targets=[query.base(queries.go_memstats_heap_alloc_bytes),query.base(queries.go_memstats_heap_sys_bytes),query.base(queries.go_memstats_heap_idle_bytes),query.base(queries.go_memstats_heap_inuse_bytes),query.base(queries.go_memstats_heap_released_bytes),]),
  panels.timeseries.base(title='Memory in Stack', description='', targets=[query.base(queries.go_memstats_stack_inuse_bytes),query.base(queries.go_memstats_stack_sys_bytes),]),
  panels.timeseries.base(title='Total Used Memory', description='', targets=[query.base(queries.go_memstats_sys_bytes),]),
  panels.timeseries.base(title='Number of Bytes in Use', description='', targets=[query.base(queries.go_memstats_mallocs_total),]),
  panels.timeseries.base(title='Rate of Objects Allocated', description='', targets=[query.base(queries.rate_go_memstats_mallocs_total),]),
  panels.timeseries.base(title='Threads', description='', targets=[query.base(queries.go_threads),]),
  panels.timeseries.base(title='Goroutines', description='', targets=[query.base(queries.go_goroutines),]),
  panels.timeseries.base(title='Rates of Allocation', description='', targets=[query.base(queries.rate_go_memstats_alloc_bytes_total),]),
  panels.timeseries.base(title='GC duration quantile', description='', targets=[query.base(queries.go_gc_duration_seconds),]),
])
