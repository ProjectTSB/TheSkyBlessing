#> asset:sacred_treasure/0960.heavy_charm/trigger/add_modifier
#
# 補正追加
#
# @within function asset:sacred_treasure/0960.heavy_charm/trigger/**main

#> 個数
# @private
#declare score_holder $Count

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 0-8-2-8-39549000000
    attribute @s minecraft:generic.movement_speed modifier remove 0-8-2-8-84949000000
# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:960}}}]
# 防御が上がるが重くなる
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 2 add
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.01 add

    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 4 add
    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.02 add

    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 6 add
    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.03 add

    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 8 add
    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.04 add

    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 10 add
    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.05 add

    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 12 add
    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.06 add

    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 14 add
    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.07 add

    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 16 add
    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.08 add

    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-39549000000 "960" 18 add
    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-84949000000 "960" -0.09 add

# リセット
    scoreboard players reset $Count Temporary