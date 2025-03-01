#> world_manager:gimmick/darkness/check.m
#
#
#
# @input args
#   X : int
#   Y : int
#   Z : int
# @within function world_manager:gimmick/darkness/do

# 空中で敵が沸くことがないように
# また、水などの流体ブロック中で沸かないように
    $execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~$(X) ~$(Y) ~$(Z) if predicate world_manager:gimmick/darkness/in_darkness if block ~ ~ ~ #lib:no_collision_without_fluid if block ~ ~-1 ~ #lib:no_collision_without_fluid unless block ~ ~-2 ~ #lib:no_collision run scoreboard players set $InDarkness Temporary 1
