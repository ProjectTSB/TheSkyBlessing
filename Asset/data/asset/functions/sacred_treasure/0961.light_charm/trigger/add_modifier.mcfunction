#> asset:sacred_treasure/0961.light_charm/trigger/add_modifier
#
#
#
# @within function asset:sacred_treasure/0961.light_charm/trigger/**main

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 0-8-2-8-60393700000
    attribute @s minecraft:generic.movement_speed modifier remove 0-8-2-8-31701100000

# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:961}}}]
# 防御が上がるが重くなる
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -1 add
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.005 add

    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -2 add
    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.01 add

    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -3 add
    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.015 add

    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -4 add
    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.02 add

    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -5 add
    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.025 add

    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -6 add
    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.03 add

    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -7 add
    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.035 add

    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -8 add
    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.04 add

    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.armor modifier add 0-8-2-8-60393700000 "961" -9 add
    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.movement_speed modifier add 0-8-2-8-31701100000 "961" 0.045 add

# リセット
    scoreboard players reset $Count Temporary