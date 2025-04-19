#> world_manager:area/01.god_boundaries/on_tick
#
#
#
# @within function world_manager:area/01.god_boundaries/

# ゲート島
    execute if predicate world_manager:area/01-00.gate_island run function world_manager:area/01-00.gate_island
# 神殿
    execute if predicate world_manager:area/01-01.flora_temple run function world_manager:area/01-01.flora_temple
    execute if predicate world_manager:area/01-02.nyaptov_temple run function world_manager:area/01-02.nyaptov_temple
    execute if predicate world_manager:area/01-03.rumor_temple run function world_manager:area/01-03.rumor_temple
    execute if predicate world_manager:area/01-04.urban_temple run function world_manager:area/01-04.urban_temple
    execute if predicate world_manager:area/01-05.wi-ki_temple run function world_manager:area/01-05.wi-ki_temple
# トレーニングエリア
    execute if predicate world_manager:area/01-50.training_area run function world_manager:area/01-50.training_area/
