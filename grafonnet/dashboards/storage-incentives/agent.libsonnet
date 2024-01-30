local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/storage-incentives/agent.libsonnet';
panels.dashboard.base(title='Agent', tags=['storage-incentives'], panels=[
  panels.stat.s(title='Make Sample (s)', description='', targets=[query.base(queries.bee_storageincentives_reserve_sample_duration),]),
  panels.stat.base(title='Neighborhood Selection (24H)', description='', targets=[query.base(queries.increase_bee_storageincentives_neighborhood_selected),]),
  panels.timeseries.percentunit(title='Is Playing Error Rate ', description='', targets=[query.base(queries.bee_storageincentives_win_phase_errors),]),
  panels.timeseries.percentunit(title='Claim Win Error Rate', description='', targets=[query.base(queries.bee_storageincentives_claim_phase_errors),]),
  panels.timeseries.percentunit(title='Reveal Error Rate', description='', targets=[query.base(queries.bee_storageincentives_reveal_phase_errors),]),
  panels.timeseries.percentunit(title='Commit Error Rate', description='', targets=[query.base(queries.bee_storageincentives_commit_phase_errors),]),
])
