#> world_manager:area/00.god_boundaries/on_tick
#
#
#
# @within function world_manager:area/00.god_boundaries/

# 初期リス
    execute if predicate world_manager:area/00-98.world-spawn-higher run function world_manager:area/00-98-world-spawn-higher
    execute if predicate world_manager:area/00-99.world-spawn run function world_manager:area/00-99.world-spawn
# チュートリアル
    execute if predicate world_manager:area/00-01.tutorial-goal run function world_manager:area/00-01.tutorial-goal
    execute if predicate world_manager:area/00-02.tutorial-island run function world_manager:area/00-02.tutorial-island
    execute if predicate world_manager:area/00-03.tutorial-artifact run function world_manager:area/00-03.tutorial-artifact
    execute if predicate world_manager:area/00-04.tutorial-religion run function world_manager:area/00-04.tutorial-religion
    execute if predicate world_manager:area/00-05.tutorial-spawner run function world_manager:area/00-05.tutorial-spawner
    execute if predicate world_manager:area/00-06.tutorial-lost_items run function world_manager:area/00-06.tutorial-lost_items
    execute if predicate world_manager:area/00-07.tutorial-recommend run function world_manager:area/00-07.tutorial-recommend
    execute if predicate world_manager:area/00-08.tutorial-tp_point run function world_manager:area/00-08.tutorial-tp_point
# 神殿
    execute if predicate world_manager:area/00-10.flora_temple run function world_manager:area/00-10.flora_temple
    execute if predicate world_manager:area/00-11.nyaptov_temple run function world_manager:area/00-11.nyaptov_temple
    execute if predicate world_manager:area/00-12.rumor_temple run function world_manager:area/00-12.rumor_temple
    execute if predicate world_manager:area/00-13.urban_temple run function world_manager:area/00-13.urban_temple
    execute if predicate world_manager:area/00-14.wi-ki_temple run function world_manager:area/00-14.wi-ki_temple
# ゲート島
    execute if predicate world_manager:area/00-30.gate_island-lower run function world_manager:area/00-30.gate_island-lower
