#> world_manager:gimmick/darkness/do
#
#
#
# @within function world_manager:gimmick/darkness/

# 適当な座標を指定する
    function world_manager:gimmick/darkness/pick_spot

# 指定した座標が暗闇かどうか判定する
    execute store result score $InDarkness Temporary run function world_manager:gimmick/darkness/check.m with storage world_manager:gimmick Darkness.Check
    scoreboard players operation @s DarknessAnxiety += $InDarkness Temporary

# ペナルティ値が一定まで溜まったら発動
    execute if score @s DarknessAnxiety matches 100.. run function world_manager:gimmick/darkness/penalty.m with storage world_manager:gimmick Darkness.Check

# リセット
    data remove storage world_manager:gimmick Darkness.Check
    scoreboard players reset $InDarkness Temporary
