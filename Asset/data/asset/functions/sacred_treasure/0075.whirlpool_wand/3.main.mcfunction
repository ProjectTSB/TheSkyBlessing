#> asset:sacred_treasure/0075.whirlpool_wand/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0075.whirlpool_wand/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く

# 水に入っているかいないか
    execute if block ~ ~ ~ water as @e[type=#lib:living,type=!player,distance=..5] at @s run function asset:sacred_treasure/0075.whirlpool_wand/3.1.insidewater
    execute unless block ~ ~ ~ water as @e[type=#lib:living,type=!player,distance=..5] at @s run function asset:sacred_treasure/0075.whirlpool_wand/3.2.outsidewater

# 演出
    playsound minecraft:block.bubble_column.upwards_inside master @a ~ ~ ~ 1 1.8
    execute as @e[type=#lib:living,type=!player,distance=..5] at @s run particle minecraft:splash ~ ~1 ~ 0.4 0.25 0.4 0.1 50 force
    execute as @e[type=#lib:living,type=!player,distance=..5] at @s run particle minecraft:poof ~ ~0.6 ~ 0.1 0.125 0.1 0.1 10 force