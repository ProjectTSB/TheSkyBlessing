#> world_manager:gimmick/darkness/do
#
#
#
# @within function world_manager:gimmick/darkness/

# 適当な座標を指定する
    # プレイヤー付近はチェックしない
    # 乱数
        execute store result storage world_manager:gimmick Darkness.Check.X int 1 run random value 16..48
        execute store result storage world_manager:gimmick Darkness.Check.Y int 1 run random value 08..24
        execute store result storage world_manager:gimmick Darkness.Check.Z int 1 run random value 16..48
    # 50% でマイナスにする
        execute if predicate lib:random_pass_per/50 store result storage world_manager:gimmick Darkness.Check.X int -1 run data get storage world_manager:gimmick Darkness.Check.X 1
        execute if predicate lib:random_pass_per/50 store result storage world_manager:gimmick Darkness.Check.Y int -1 run data get storage world_manager:gimmick Darkness.Check.Y 1
        execute if predicate lib:random_pass_per/50 store result storage world_manager:gimmick Darkness.Check.Z int -1 run data get storage world_manager:gimmick Darkness.Check.Z 1

# 指定した座標が暗闇かどうか判定する
    execute store result score $InDarkness Temporary run function world_manager:gimmick/darkness/check.m with storage world_manager:gimmick Darkness.Check
    scoreboard players operation @s DarknessAnxiety += $InDarkness Temporary

# ペナルティ値が一定まで溜まったら発動
    execute if score @s DarknessAnxiety matches 100.. run function world_manager:gimmick/darkness/penalty.m with storage world_manager:gimmick Darkness.Check

# リセット
    data remove storage world_manager:gimmick Darkness.Check
    scoreboard players reset $InDarkness Temporary
