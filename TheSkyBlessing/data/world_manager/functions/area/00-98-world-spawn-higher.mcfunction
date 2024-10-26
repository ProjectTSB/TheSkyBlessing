#> world_manager:area/00-98-world-spawn-higher
#
#
#
# @within function world_manager:area/00.god_boundaries/on_tick

# エリアセット
    scoreboard players set $NextInSubArea Temporary 98
# 問答無用で初期リスへ飛ばす
    spawnpoint @s 4093 165 -468 270
    tp @s 4093 165 -468
