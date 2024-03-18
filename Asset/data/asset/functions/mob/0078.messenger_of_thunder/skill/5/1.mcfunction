#> asset:mob/0078.messenger_of_thunder/skill/5/1
#
# メイン処理部
#
# @within function asset:mob/0078.messenger_of_thunder/tick/4.skill_branch

# 演出
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..50] ~ ~ ~ 2 1.5 1

# 設置するためにMarkerを設置する 体力半分以下で本数増加
    execute if entity @s[scores={26.Tick=2}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/5/2.spread
    execute if entity @s[scores={26.Tick=4}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/5/2.spread
    execute if entity @s[scores={26.Tick=6}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/5/2.spread
    execute if entity @s[tag=26.HPLess50Per,scores={26.Tick=8}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/5/2.spread
    execute if entity @s[tag=26.HPLess50Per,scores={26.Tick=10}] at @p[gamemode=!spectator] run function asset:mob/0078.messenger_of_thunder/skill/5/2.spread

# リセット
    execute if entity @s[scores={26.Tick=26..}] run function asset:mob/0078.messenger_of_thunder/tick/reset