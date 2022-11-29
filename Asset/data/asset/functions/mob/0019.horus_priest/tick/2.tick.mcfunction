#> asset:mob/0019.horus_priest/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0019.horus_priest/tick/1.trigger

# スコアを増やしていく
    scoreboard players add @s J.HealCool 1

# 特定のスコアに達したら効果発動
    execute if score @s J.HealCool matches 160 run playsound entity.elder_guardian.hurt hostile @a ~ ~ ~ 0.6 0.8
    execute if score @s J.HealCool matches 160 run particle minecraft:dragon_breath ~ ~ ~ 0.2 0.2 0.2 0.06 100
    execute if score @s J.HealCool matches 180 run function asset:mob/0019.horus_priest/tick/2.1.heal