#> asset:mob/0078.messenger_of_thunder/tick/2.tick
#
# Mobのtick時の処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/1.trigger

# 演出
    particle dust 1 1 0 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 3 normal @a
    particle dust 0.2 0.2 0.2 1 ~ ~1.7 ~ 0.2 0.2 0.2 0 3 normal @a

# スコア
    scoreboard players add @s 26.Tick 1

# 技選択
    execute if entity @s[scores={26.Tick=0}] run function asset:mob/0078.messenger_of_thunder/tick/3.skill_select

# スキル
    execute if entity @s[scores={26.Tick=0..}] run function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

# ワープのクールダウン処理(0以下ならワープ可能になる)
    execute if entity @s[scores={26.TPCool=0..}] run scoreboard players remove @s 26.TPCool 1

# ハメ、落下対策でワープする
    execute unless entity @s[scores={26.TPCool=0..}] unless block ~ ~ ~ #lib:no_collision_without_fluid at @p[gamemode=!spectator,distance=..50] unless block ~ ~ ~ #walls run tag @s add TPTrigger
    execute unless entity @s[scores={26.TPCool=0..}] if block ~ ~-0.5 ~ #lib:no_collision if block ~ ~-1.5 ~ #lib:no_collision if block ~ ~-2.5 ~ #lib:no_collision if block ~ ~-3.5 ~ #lib:no_collision at @p[gamemode=!spectator,distance=..50] run tag @s add TPTrigger

# ワープ
    execute if entity @s[tag=TPTrigger] run function asset:mob/0078.messenger_of_thunder/tick/teleport