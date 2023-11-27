local g = import 'g.libsonnet';
local prometheusQuery = g.query.prometheus;
local variables = import 'variables.libsonnet';

{
  base(query):
    prometheusQuery.new(
      '$' + variables.datasource.name, query.query % {"selector": variables.selector}
    )
    + prometheusQuery.withIntervalFactor(1)
    + prometheusQuery.withLegendFormat(query.legend),
}
