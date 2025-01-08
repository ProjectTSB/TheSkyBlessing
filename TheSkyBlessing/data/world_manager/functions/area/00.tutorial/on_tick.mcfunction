#> world_manager:area/00.tutorial/on_tick
#
#
#
# @within function world_manager:area/00.tutorial/

# チュートリアル
    execute if predicate world_manager:area/00-01.tutorial-mission run function world_manager:area/00-01.tutorial-mission
    execute if predicate world_manager:area/00-02.tutorial-curse run function world_manager:area/00-02.tutorial-curse
    execute if predicate world_manager:area/00-03.tutorial-artifact run function world_manager:area/00-03.tutorial-artifact
    execute if predicate world_manager:area/00-04.tutorial-gods run function world_manager:area/00-04.tutorial-gods
    execute if predicate world_manager:area/00-05.tutorial-spawner run function world_manager:area/00-05.tutorial-spawner
    execute if predicate world_manager:area/00-06.tutorial-tomb run function world_manager:area/00-06.tutorial-tomb
    execute if predicate world_manager:area/00-07.tutorial-lost_items run function world_manager:area/00-07.tutorial-lost_items
    execute if predicate world_manager:area/00-08.tutorial-tp_gate run function world_manager:area/00-08.tutorial-tp_gate
# チュートリアル完了済フラグが付いていたらTPする
    execute if entity @s[tag=TutorialEnded] run tp @s 23.5 3.5 24.5
# エリア下部
    execute if predicate world_manager:area/00-30.tutorial-lower run function world_manager:area/00-30.tutorial-lower
