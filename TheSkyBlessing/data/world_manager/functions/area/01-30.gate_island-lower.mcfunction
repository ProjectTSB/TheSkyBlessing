#> world_manager:area/01-30.gate_island-lower
#
#
#
# @within function world_manager:area/01.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 30
# 復帰エフェクト
    tp @s 0 0 0
    tp @s ~ ~ ~
    effect give @s levitation 1 7 true
