#> world_manager:gimmick/darkness/check/check.m
#
#
#
# @input args Sub : int
# @within function world_manager:gimmick/darkness/check/.m

# 現Y相対座標を代入
    execute store result score $Y Temporary run data get storage world_manager:gimmick Darkness.Check.Y 1
    $execute store result storage world_manager:gimmick Darkness.Check.Y int 1 run scoreboard players remove $Y Temporary $(Sub)
    scoreboard players reset $Y Temporary

# 暗闇かどうかチェックする
    return run execute if predicate world_manager:gimmick/darkness/in_darkness
