local panels = import '../../lib/panels.libsonnet';
local query = import '../../lib/queries.libsonnet';
local queries = import '../../lib/queries/beekeeper/beekeeper-erasure-code-test.libsonnet';
panels.dashboard.base(title='Erasure code test', tags=['beekeeper'], panels=[
  panels.row.base(title='Level 0'),
  panels.barchart.percentunit(title='level=0, strategy=0, fallback=false', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_0_strategy_0_fallback_false),]),
  panels.barchart.percentunit(title='level=0, strategy=0, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_0_strategy_0_fallback_true),]),
  panels.barchart.percentunit(title='level=0, strategy=1, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_0_strategy_1_fallback_true),]),
  panels.barchart.percentunit(title='level=0, strategy=2, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_0_strategy_2_fallback_true),]),
  panels.barchart.percentunit(title='level=0, strategy=3, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_0_strategy_3_fallback_true),]),
  panels.stat.base(title='Download Attempts', description='Download attempts', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_attempts_level_0),]),
  panels.row.base(title='Level 1'),
  panels.barchart.percentunit(title='level=1, strategy=0, fallback=false', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_1_strategy_0_fallback_false),]),
  panels.barchart.percentunit(title='level=1, strategy=0, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_1_strategy_0_fallback_true),]),
  panels.barchart.percentunit(title='level=1, strategy=1, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_1_strategy_1_fallback_true),]),
  panels.barchart.percentunit(title='level=1, strategy=2, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_1_strategy_2_fallback_true),]),
  panels.barchart.percentunit(title='level=1, strategy=3, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_1_strategy_3_fallback_true),]),
  panels.stat.base(title='Download Attempts', description='Download attempts', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_attempts_level_1),]),
  panels.row.base(title='Level 2'),
  panels.barchart.percentunit(title='level=2, strategy=0, fallback=false', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_2_strategy_0_fallback_false),]),
  panels.barchart.percentunit(title='level=2, strategy=0, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_2_strategy_0_fallback_true),]),
  panels.barchart.percentunit(title='level=2, strategy=1, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_2_strategy_1_fallback_true),]),
  panels.barchart.percentunit(title='level=2, strategy=2, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_2_strategy_2_fallback_true),]),
  panels.barchart.percentunit(title='level=2, strategy=3, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_2_strategy_3_fallback_true),]),
  panels.stat.base(title='Download Attempts', description='Download attempts', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_attempts_level_2),]),
  panels.row.base(title='Level 3'),
  panels.barchart.percentunit(title='level=3, strategy=0, fallback=false', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_3_strategy_0_fallback_false),]),
  panels.barchart.percentunit(title='level=3, strategy=0, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_3_strategy_0_fallback_true),]),
  panels.barchart.percentunit(title='level=3, strategy=1, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_3_strategy_1_fallback_true),]),
  panels.barchart.percentunit(title='level=3, strategy=2, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_3_strategy_2_fallback_true),]),
  panels.barchart.percentunit(title='level=3, strategy=3, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_3_strategy_3_fallback_true),]),
  panels.stat.base(title='Download Attempts', description='Download attempts', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_attempts_level_3),]),
  panels.row.base(title='Level 4'),
  panels.barchart.percentunit(title='level=4, strategy=0, fallback=false', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_4_strategy_0_fallback_false),]),
  panels.barchart.percentunit(title='level=4, strategy=0, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_4_strategy_0_fallback_true),]),
  panels.barchart.percentunit(title='level=4, strategy=1, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_4_strategy_1_fallback_true),]),
  panels.barchart.percentunit(title='level=4, strategy=2, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_4_strategy_2_fallback_true),]),
  panels.barchart.percentunit(title='level=4, strategy=3, fallback=true', description='Download success rate', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_errors_level_4_strategy_3_fallback_true),]),
  panels.stat.base(title='Download Attempts', description='Download attempts', targets=[query.base(queries.sum_increase_beekeeper_check_erasure_code_download_attempts_level_4),]),
])
