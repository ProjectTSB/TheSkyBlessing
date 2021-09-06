#> asset:mob/0108.necromancer/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0108.necromancer/tick/1.trigger

# 基本のスコア
    scoreboard players add @s 30.Tick 1

# エクトプラズム召喚&魔術弾発射
    execute if score @s 30.Tick matches 80.. run function asset:mob/0108.necromancer/tick/3.summon_and_shoot