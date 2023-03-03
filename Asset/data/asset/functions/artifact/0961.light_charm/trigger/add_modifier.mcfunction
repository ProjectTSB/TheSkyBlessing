#> asset:artifact/0961.light_charm/trigger/add_modifier
#
#
#
# @within function asset:artifact/0961.light_charm/trigger/**main

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 1-0-1-0-03c100000007
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-0-03c100000007

# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:961}}}]
# 防御が上がるが重くなる
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -1 add
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.015 add

    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -2 add
    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.03 add

    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -3 add
    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.045 add

    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -4 add
    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.06 add

    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -5 add
    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.075 add

    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -6 add
    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.09 add

    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -7 add
    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.105 add

    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -8 add
    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.13 add

    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-03c100000007 "961" -9 add
    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-03c100000007 "961" 0.145 add

# リセット
    scoreboard players reset $Count Temporary