#> asset:artifact/1032.life_charm/trigger/add_modifier
#
# 補正を追加する
#
# @within function
#   asset:artifact/1032.life_charm/trigger/3.main
#   asset:artifact/1032.life_charm/trigger/dis_equip/main

# 補正を削除
    attribute @s generic.max_health modifier remove 00000001-0000-0001-0000-040800000007

# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1032}}}]

# 2.5×N% 最大体力が上昇
    execute if score $Count Temporary matches 1 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.025 multiply_base
    execute if score $Count Temporary matches 2 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.050 multiply_base
    execute if score $Count Temporary matches 3 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.075 multiply_base
    execute if score $Count Temporary matches 4 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.100 multiply_base
    execute if score $Count Temporary matches 5 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.125 multiply_base
    execute if score $Count Temporary matches 6 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.150 multiply_base
    execute if score $Count Temporary matches 7 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.175 multiply_base
    execute if score $Count Temporary matches 8 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.200 multiply_base
    execute if score $Count Temporary matches 9 run attribute @s generic.max_health modifier add 00000001-0000-0001-0000-040800000007 "1032.MaxHP" 0.225 multiply_base

# リセット
    scoreboard players reset $Count Temporary