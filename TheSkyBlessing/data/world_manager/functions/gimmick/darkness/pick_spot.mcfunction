#> world_manager:gimmick/darkness/pick_spot
#
#
#
# @within function
#   world_manager:gimmick/darkness/do
#   world_manager:gimmick/darkness/pick_spot

#> Private
# @private
    #declare score_holder $X
    #declare score_holder $Y
    #declare score_holder $Z

# 乱数
    execute store result score $X Temporary run random value 0..48
    execute store result score $Y Temporary run random value 0..24
    execute store result score $Z Temporary run random value 0..48
# プレイヤー付近はチェックしない
    execute if score $X Temporary matches 0..16 if score $Y Temporary matches 0..8 if score $Z Temporary matches 0..16 run return run function world_manager:gimmick/darkness/pick_spot

# 50% でマイナスにする
    execute if predicate lib:random_pass_per/50 run scoreboard players operation $X Temporary *= $-1 Const
    execute if predicate lib:random_pass_per/50 run scoreboard players operation $Y Temporary *= $-1 Const
    execute if predicate lib:random_pass_per/50 run scoreboard players operation $Z Temporary *= $-1 Const

# 代入
    execute store result storage world_manager:gimmick Darkness.Check.X int 1 run scoreboard players get $X Temporary
    execute store result storage world_manager:gimmick Darkness.Check.Y int 1 run scoreboard players get $Y Temporary
    execute store result storage world_manager:gimmick Darkness.Check.Z int 1 run scoreboard players get $Z Temporary

# リセット
    scoreboard players reset $X Temporary
    scoreboard players reset $Y Temporary
    scoreboard players reset $Z Temporary
