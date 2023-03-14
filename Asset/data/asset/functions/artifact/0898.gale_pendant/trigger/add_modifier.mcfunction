#> asset:artifact/0898.gale_pendant/trigger/add_modifier
#
#
#
# @within function asset:artifact/0898.gale_pendant/trigger/**main

#> 個数
# @private
#declare score_holder $Count

# 補正を削除
    attribute @s generic.movement_speed modifier remove 1-0-1-0-38200000007
# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:898}}}]
# 速度増加を付与する
    execute if score $Count Temporary matches 1 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 0.2 multiply_base
    execute if score $Count Temporary matches 2 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 0.4 multiply_base
    execute if score $Count Temporary matches 3 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 0.6 multiply_base
    execute if score $Count Temporary matches 4 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 0.8 multiply_base
    execute if score $Count Temporary matches 5 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 1.0 multiply_base
    execute if score $Count Temporary matches 6 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 1.2 multiply_base
    execute if score $Count Temporary matches 7 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 1.4 multiply_base
    execute if score $Count Temporary matches 8 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 1.6 multiply_base
    execute if score $Count Temporary matches 9 run attribute @s generic.movement_speed modifier add 1-0-1-0-38200000007 "898" 1.8 multiply_base

# リセット
    scoreboard players reset $Count Temporary