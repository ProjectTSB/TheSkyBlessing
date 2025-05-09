#> world_manager:gimmick/darkness/do
#
#
#
# @within function
#   world_manager:gimmick/darkness/
#   world_manager:gimmick/darkness/do

# 適当な座標を指定する
    execute store result score $X Temporary run random value -48..48
    execute store result score $Y Temporary run random value -16..24
    execute store result score $Z Temporary run random value -48..48
# 座標をストレージに代入
    execute store result storage world_manager:gimmick Darkness.Check.X int 1 run scoreboard players get $X Temporary
    execute store result storage world_manager:gimmick Darkness.Check.Y int 1 run scoreboard players get $Y Temporary
    execute store result storage world_manager:gimmick Darkness.Check.Z int 1 run scoreboard players get $Z Temporary
# プレイヤーの近くは選定しないように
    execute if function world_manager:gimmick/darkness/is_player_nearby/ run return run function world_manager:gimmick/darkness/break

# 一時スコアのリセット
    scoreboard players reset $X Temporary
    scoreboard players reset $Y Temporary
    scoreboard players reset $Z Temporary

# 指定した座標が暗闇かどうか判定する
    execute store result score $InDarkness Temporary run function world_manager:gimmick/darkness/check/.m with storage world_manager:gimmick Darkness.Check
    scoreboard players operation $DarknessAnxiety Global += $InDarkness Temporary

# ペナルティ値が一定まで溜まったら発動
    execute if score $DarknessAnxiety Global matches 100.. run function world_manager:gimmick/darkness/penalty.m with storage world_manager:gimmick Darkness.Check

# リセット
    data remove storage world_manager:gimmick Darkness.Check
    scoreboard players reset $InDarkness Temporary
