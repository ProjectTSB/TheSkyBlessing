#> world_manager:area/00-30.gate_island-lower
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 30
# 復帰エフェクト
    effect give @s levitation 1 7 true
