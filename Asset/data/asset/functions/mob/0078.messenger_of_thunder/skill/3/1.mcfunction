#> asset:mob/0078.messenger_of_thunder/skill/3/1
#
# スキル3のメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

# 演出
    particle electric_spark ~ ~1.2 ~ 0.4 0.5 0.4 0.1 5 normal @a

# 1回目
    execute if entity @s[scores={26.Tick=5}] run function asset:mob/0078.messenger_of_thunder/skill/3/2.spread

# 2回目
    execute if entity @s[scores={26.Tick=10}] at @p[gamemode=!spectator,distance=..50] run function asset:mob/0078.messenger_of_thunder/skill/3/2.spread

# 3回目
    execute if entity @s[scores={26.Tick=20}] run function asset:mob/0078.messenger_of_thunder/skill/3/2.spread

# リセット
    execute if entity @s[scores={26.Tick=30..}] run function asset:mob/0078.messenger_of_thunder/tick/reset