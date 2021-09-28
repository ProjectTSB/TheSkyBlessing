#> asset:mob/0092.red_rose/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0092.red_rose/tick/1.trigger

# スコアを増やす
    scoreboard players add @s 2K.Time 1

# 一定のスコアになったら実行（スキル発動の予兆）
    execute if score @s 2K.Time matches 120.. run particle dragon_breath ~ ~0.5 ~ 2 0 2 0 10
    execute if score @s 2K.Time matches 120 run playsound entity.ravager.death hostile @a ~ ~ ~ 1 2
    execute if score @s 2K.Time matches 120 run data modify entity @s NoAI set value 1

# スキル発動
    execute if score @s 2K.Time matches 140 run function asset:mob/0092.red_rose/tick/2.1.skill

# 演出
    particle dripping_obsidian_tear ~ ~1 ~ 0.4 0.4 0.4 1 1 normal
    particle portal ~ ~1 ~ 0.4 0.4 0.4 1 3 normal