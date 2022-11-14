#> asset:sacred_treasure/0737.firework_display/trigger/firework_process/append_color
#
#
#
# @within function
#   asset:sacred_treasure/0737.firework_display/trigger/firework_process/summon
#   asset:sacred_treasure/0737.firework_display/trigger/firework_process/append_color

# ランダムに色を指定する
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $10 Const

# 白
    execute if score $Random Temporary matches 0 run data modify storage asset:temp Firework.Colors append value 16383998
# 赤
    execute if score $Random Temporary matches 1 run data modify storage asset:temp Firework.Colors append value 11546150
# 橙
    execute if score $Random Temporary matches 2 run data modify storage asset:temp Firework.Colors append value 16351261
# 黄
    execute if score $Random Temporary matches 3 run data modify storage asset:temp Firework.Colors append value 16701501
# 黄緑
    execute if score $Random Temporary matches 4 run data modify storage asset:temp Firework.Colors append value 8439583
# 水
    execute if score $Random Temporary matches 5 run data modify storage asset:temp Firework.Colors append value 1481884
# 空
    execute if score $Random Temporary matches 6 run data modify storage asset:temp Firework.Colors append value 3847130
# 青
    execute if score $Random Temporary matches 7 run data modify storage asset:temp Firework.Colors append value 3949738
# 紫
    execute if score $Random Temporary matches 8 run data modify storage asset:temp Firework.Colors append value 8991416
# 赤紫
    execute if score $Random Temporary matches 9 run data modify storage asset:temp Firework.Colors append value 13061821
# 桃
    execute if score $Random Temporary matches 10 run data modify storage asset:temp Firework.Colors append value 15961002

# データが3つ入るまでは再帰
    execute unless data storage asset:temp Firework.Colors[2] run function asset:sacred_treasure/0737.firework_display/trigger/firework_process/append_color