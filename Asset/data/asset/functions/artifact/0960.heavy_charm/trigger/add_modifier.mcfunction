#> asset:artifact/0960.heavy_charm/trigger/add_modifier
#
# 補正追加
#
# @within function asset:artifact/0960.heavy_charm/trigger/**main

#> 個数
# @private
#declare score_holder $Count

# 補正を削除
    attribute @s minecraft:generic.armor modifier remove 1-0-1-0-3c000000007
    attribute @s minecraft:generic.movement_speed modifier remove 1-0-1-0-3c000000007
# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:960}}}]
# 防御が上がるが重くなる
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 2 add
    execute if score $Count Temporary matches 1 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.02 add

    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 4 add
    execute if score $Count Temporary matches 2 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.04 add

    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 6 add
    execute if score $Count Temporary matches 3 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.06 add

    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 8 add
    execute if score $Count Temporary matches 4 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.08 add

    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 10 add
    execute if score $Count Temporary matches 5 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.1 add

    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 12 add
    execute if score $Count Temporary matches 6 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.12 add

    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 14 add
    execute if score $Count Temporary matches 7 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.14 add

    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 16 add
    execute if score $Count Temporary matches 8 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.16 add

    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.armor modifier add 1-0-1-0-3c000000007 "960" 18 add
    execute if score $Count Temporary matches 9 run attribute @s minecraft:generic.movement_speed modifier add 1-0-1-0-3c000000007 "960" -0.18 add

# リセット
    scoreboard players reset $Count Temporary