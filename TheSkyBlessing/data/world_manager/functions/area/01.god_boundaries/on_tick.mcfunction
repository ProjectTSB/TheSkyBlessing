#> world_manager:area/01.god_boundaries/on_tick
#
#
#
# @within function world_manager:area/01.god_boundaries/

# 初期リス
    execute if predicate world_manager:area/01-98.world-spawn-higher run function world_manager:area/01-98-world-spawn-higher
    execute if predicate world_manager:area/01-99.world-spawn run function world_manager:area/01-99.world-spawn
# チュートリアル
    execute if predicate world_manager:area/01-01.tutorial-goal run function world_manager:area/01-01.tutorial-goal
    execute if predicate world_manager:area/01-02.tutorial-island run function world_manager:area/01-02.tutorial-island
    execute if predicate world_manager:area/01-03.tutorial-artifact run function world_manager:area/01-03.tutorial-artifact
    execute if predicate world_manager:area/01-04.tutorial-religion run function world_manager:area/01-04.tutorial-religion
    execute if predicate world_manager:area/01-05.tutorial-spawner run function world_manager:area/01-05.tutorial-spawner
    execute if predicate world_manager:area/01-06.tutorial-lost_items run function world_manager:area/01-06.tutorial-lost_items
    execute if predicate world_manager:area/01-07.tutorial-recommend run function world_manager:area/01-07.tutorial-recommend
    execute if predicate world_manager:area/01-08.tutorial-tp_point run function world_manager:area/01-08.tutorial-tp_point
# 神殿
    execute if predicate world_manager:area/01-10.flora_temple run function world_manager:area/01-10.flora_temple
    execute if predicate world_manager:area/01-11.nyaptov_temple run function world_manager:area/01-11.nyaptov_temple
    execute if predicate world_manager:area/01-12.rumor_temple run function world_manager:area/01-12.rumor_temple
    execute if predicate world_manager:area/01-13.urban_temple run function world_manager:area/01-13.urban_temple
    execute if predicate world_manager:area/01-14.wi-ki_temple run function world_manager:area/01-14.wi-ki_temple
# ゲート島
    execute if predicate world_manager:area/01-30.gate_island-lower run function world_manager:area/01-30.gate_island-lower