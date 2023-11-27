local g = import './g.libsonnet';
local var = g.dashboard.variable;

{
  datasource:
    var.datasource.new('datasource', 'prometheus')
    + var.datasource.selectionOptions.withMulti(false)
    + var.datasource.generalOptions.withCurrent('Prometheus-bee'),

  cluster:
    var.query.new('cluster')
    + var.query.withDatasourceFromVariable(self.datasource)
    + var.query.queryTypes.withLabelValues(
      'cluster',
      'bee_info',
    )
    + var.query.withRefresh(1)
    + var.query.selectionOptions.withMulti()
    + var.query.selectionOptions.withIncludeAll(),

  namespace:
    var.query.new('namespace')
    + var.query.withDatasourceFromVariable(self.datasource)
    + var.query.queryTypes.withLabelValues(
      'namespace',
      'bee_info{cluster=~"$%s"}' % self.cluster.name,
    )
    + var.query.withRefresh(1)
    + var.query.selectionOptions.withMulti()
    + var.query.selectionOptions.withIncludeAll(),

  instance:
    var.query.new('instance')
    + var.query.withDatasourceFromVariable(self.datasource)
    + var.query.queryTypes.withLabelValues(
      'instance',
      'bee_info{cluster=~"$%s", namespace=~"$%s"}'
      % [
        self.cluster.name,
        self.namespace.name,
      ],
    )
    + var.query.withRefresh(1)
    + var.query.selectionOptions.withMulti()
    + var.query.selectionOptions.withIncludeAll(),

  interval:
    var.interval.new('interval', ['1m', '5m', '30m', '1h', '6h', '12h', '1d', '7d', '14d', '30d'])
    + var.interval.withAutoOption(30, '1s'),

  all: [
    self.datasource,
    self.cluster,
    self.namespace,
    self.instance,
    self.interval,
  ],

  selector:
    'cluster=~"$%s", namespace=~"$%s", instance=~"$%s"' % [
      self.cluster.name,
      self.namespace.name,
      self.instance.name,
    ],

}
