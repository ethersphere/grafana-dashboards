local g = import 'g.libsonnet';

local variables = import 'variables.libsonnet';

{
  dashboard: {
    local dashboard = g.dashboard,
    local link = g.dashboard.link,

    base(title, description='', tags=[], panels):
      dashboard.new(title)
      + dashboard.withDescription(description)
      + dashboard.withTags(tags)
      + dashboard.withLinks([
        link.dashboards.new(tags[0] + ' dashboards', tags),
      ])
      + dashboard.time.withFrom(value='now-1h')
      + dashboard.time.withTo(value='now')
      + dashboard.withTimezone(value='browser')
      + dashboard.graphTooltip.withSharedCrosshair()
      + dashboard.withVariables(variables.all)
      + dashboard.withPanels(
          g.util.grid.wrapPanels(panels)
        ),
  },

  row: {
    local row = g.panel.row,
    base(title):
      row.new(title),
  },

  timeseries: {
    local timeSeries = g.panel.timeSeries,
    local fieldOverride = g.panel.timeSeries.fieldOverride,
    local custom = timeSeries.fieldConfig.defaults.custom,
    local options = timeSeries.options,
    local standardOptions = timeSeries.standardOptions,
    local panelOptions = timeSeries.panelOptions,

    base(title, targets, description='', width=12, heigth=8):
      timeSeries.new(title)
      + timeSeries.queryOptions.withTargets(targets)
      + timeSeries.queryOptions.withInterval('1m')
      + panelOptions.withDescription(description)
      + options.legend.withDisplayMode('table')
      + options.legend.withCalcs([
        'lastNotNull',
        'max',
      ])
      + custom.withFillOpacity(10)
      + custom.withShowPoints('never')
      + custom.withFillOpacity(0)
      + timeSeries.gridPos.withW(width)
      + timeSeries.gridPos.withH(heigth),

    bytes(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('bytes'),

    short(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('short')
      + standardOptions.withDecimals(0),

    s(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('s')
      + custom.scaleDistribution.withType('log')
      + custom.scaleDistribution.withLog(10),

    percentunit(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('percentunit')
      + standardOptions.withDecimals(0),

    binBps(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('binBps'),

    bool(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('bool'),

    decbytes(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('decbytes'),
  },

  bargauge: {
    local barGauge = g.panel.barGauge,
    local options = barGauge.options,
    local standardOptions = barGauge.standardOptions,
    local panelOptions = barGauge.panelOptions,

    base(title, targets, description='', width=12, heigth=8):
      barGauge.new(title)
      + barGauge.queryOptions.withTargets(targets)
      + panelOptions.withDescription(description)
      + options.reduceOptions.withCalcs('mean')
      + standardOptions.thresholds.withMode('absolute')
      + standardOptions.thresholds.withSteps([
        { color: 'green', value: null },
        { color: 'red', value: 15 },
      ])
      + barGauge.gridPos.withW(width)
      + barGauge.gridPos.withH(heigth),

    s(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('s'),
  },

  gauge: {
    local gauge = g.panel.gauge,
    local options = gauge.options,
    local standardOptions = gauge.standardOptions,
    local panelOptions = gauge.panelOptions,

    base(title, targets, description='', width=12, heigth=8):
      gauge.new(title)
      + gauge.queryOptions.withTargets(targets)
      + panelOptions.withDescription(description)
      + options.reduceOptions.withCalcs('lastNotNull')
      + standardOptions.thresholds.withMode('absolute')
      + standardOptions.thresholds.withSteps([
        { color: 'green', value: null },
        { color: 'red', value: 80 },
      ])
      + gauge.gridPos.withW(width)
      + gauge.gridPos.withH(heigth),

    bytes(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('bytes'),

    sci(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('sci'),

    percentunit(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('percentunit')
      + standardOptions.withMax(1)
      + standardOptions.thresholds.withSteps([
        { color: 'green', value: null },
        { color: 'red', value: 0.1 },
      ]),
  },

  heatmap: {
    local heatmap = g.panel.heatmap,
    local options = heatmap.options,
    local standardOptions = heatmap.standardOptions,
    local panelOptions = heatmap.panelOptions,

    base(title, targets, description='', width=12, heigth=8):
      heatmap.new(title)
      + heatmap.queryOptions.withTargets(targets)
      + heatmap.queryOptions.withInterval('1m')
      + panelOptions.withDescription(description)
      + options.legend.withShow(false)
      + options.withCellGap(2)
      + options.color.HeatmapColorOptions.withMode('scheme')
      + options.color.HeatmapColorOptions.withScheme('Blues')
      + options.color.HeatmapColorOptions.withSteps(128)
      + standardOptions.withUnit('short')
      + heatmap.gridPos.withW(width)
      + heatmap.gridPos.withH(heigth),

    s(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('s'),

    percentunit(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('percentunit')
      + standardOptions.withDecimals(0),

  },

  stat: {
    local stat = g.panel.stat,
    local options = stat.options,
    local standardOptions = stat.standardOptions,
    local panelOptions = stat.panelOptions,

    base(title, targets, description='', width=12, heigth=8):
      stat.new(title)
      + stat.queryOptions.withTargets(targets)
      + panelOptions.withDescription(description)
      + options.reduceOptions.withCalcs('lastNotNull')
      + standardOptions.thresholds.withMode('absolute')
      + stat.gridPos.withW(width)
      + stat.gridPos.withH(heigth),

    percentunit(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('percentunit')
      + standardOptions.withMax(1)
      + standardOptions.thresholds.withSteps([
        { color: 'green', value: null },
        { color: 'red', value: 0.1 },
      ]),

    short(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('short')
      + standardOptions.withDecimals(0),

    s(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('s'),

    binBps(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('binBps'),

    decbytes(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('decbytes'),

    bytes(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('bytes'),

    string(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('string'),
  },

  table: {
    local table = g.panel.table,
    local standardOptions = table.standardOptions,
    local panelOptions = table.panelOptions,

    base(title, targets, description='', width=12, heigth=8):
      table.new(title)
      + table.queryOptions.withTargets(targets)
      + panelOptions.withDescription(description)
      + standardOptions.thresholds.withMode('absolute')
      + table.gridPos.withW(width)
      + table.gridPos.withH(heigth),

    short(title, targets, description='', width=12, heigth=8):
      self.base(title, targets, description, width, heigth)
      + standardOptions.withUnit('short')
      + standardOptions.withDecimals(0),
  },
}
