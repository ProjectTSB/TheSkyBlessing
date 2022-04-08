#> asset:mob/0078.messenger_of_thunder/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/1.trigger

# 演出
    particle dust 1 1 0 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a
    particle dust 0.3 0.3 0.3 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 1 normal @a

# スコア
    execute unless entity @s[scores={26.Tick=100..}] if entity @a[distance=..50] run scoreboard players add @s 26.Tick 1

# 技選択
    execute if entity @s[scores={26.Tick=0}] run function asset:mob/0078.messenger_of_thunder/tick/3.skill_select

# スキル
    execute if entity @s[scores={26.Tick=0..}] run function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch