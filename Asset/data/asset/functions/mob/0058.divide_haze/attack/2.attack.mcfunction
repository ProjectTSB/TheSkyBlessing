#> asset:mob/0058.divide_haze/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0058.divide_haze/attack/1.trigger

# 演出
   execute at @p[tag=Victim] run particle dust 3 2 0.01 1 ~ ~1 ~ 0.5 0.5 0.5 1 20 normal @a

# 増殖カウント蓄積
   scoreboard players add @s Temporary 20