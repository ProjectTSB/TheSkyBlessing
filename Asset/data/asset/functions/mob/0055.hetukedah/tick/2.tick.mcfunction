#> asset:mob/0055.hetukedah/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0055.hetukedah/tick/1.trigger

# スコア付与
    scoreboard players add @s 1J.BossTime 1

# 一定のスコアになったら実行（スキル発動の予兆）
    execute if score @s 1J.BossTime matches 120.. run particle dragon_breath ~ ~0.5 ~ 2 0 2 0 10
    execute if score @s 1J.BossTime matches 120 run playsound entity.ravager.death hostile @a ~ ~ ~ 1 2
    execute if score @s 1J.BossTime matches 120 run data merge entity @s {NoAI:1b}

# スキル発動
    execute if score @s 1J.BossTime matches 140 run function asset:mob/0055.hetukedah/tick/3.skill

# 演出
    particle dripping_obsidian_tear ~ ~1 ~ 0.4 0.4 0.4 1 1 normal
    particle portal ~ ~1 ~ 0.4 0.4 0.4 1 3 normal