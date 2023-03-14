#> asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/append_color
#
# .$ColorCountの値だけ再帰で花火に色を追加する
#
# @within function
#   asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/
#   asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/append_color

# ランダムに色を指定する
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $11 Const

# 再帰の回数を計測するスコア
    scoreboard players add $RecursiveCount Temporary 1

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

# $ColorCountが1以上でかつ $RecursiveCount = $ColorCountになるまで再帰
    execute if score $ColorCount Temporary matches 1.. unless score $RecursiveCount Temporary = $ColorCount Temporary run function asset:artifact/0737.summer_festival_of_remembrance/trigger/firework_process/summon/append_color