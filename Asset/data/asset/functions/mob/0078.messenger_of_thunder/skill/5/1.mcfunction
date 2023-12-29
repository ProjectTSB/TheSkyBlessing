#> asset:mob/0078.messenger_of_thunder/skill/5/1
#
# メイン処理部
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

# 演出
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.5 0

# 設置するためにAECを設置する
    execute if entity @s[scores={26.Tick=2}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/5/2.spread
    execute if entity @s[scores={26.Tick=4}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/5/2.spread
    execute if entity @s[scores={26.Tick=6}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/5/2.spread

# リセット
    execute if entity @s[scores={26.Tick=26..}] run function asset:mob/0078.messenger_of_thunder/tick/reset