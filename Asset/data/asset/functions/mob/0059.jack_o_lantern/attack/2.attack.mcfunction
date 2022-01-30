#> asset:mob/0059.jack_o_lantern/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0059.jack_o_lantern/attack/1.trigger

# 演出
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 1.8 0
    execute at @p[tag=Victim] run particle dust 1 0.651 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a
    execute at @p[tag=Victim] run particle dust 0.851 0 1 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 15 normal @a

# 不運を付与
    effect give @p[tag=Victim] unluck 15 2 false
# スコア蓄積
    execute unless score @s 1N.Surprise matches 8.. run scoreboard players add @s 1N.Surprise 1

# 発光状態の時に火属性攻撃
    execute if score @s 1N.Glowing matches 40.. run function asset:mob/0059.jack_o_lantern/attack/3.glowing_state