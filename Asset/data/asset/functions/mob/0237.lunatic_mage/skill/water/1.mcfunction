#> asset:mob/0237.lunatic_mage/skill/water/1
#
# 水魔法を管理します
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# 予備動作的な
    execute if entity @s[scores={6L.Tick=1}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.8 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 0.17 0.34 1 1.5 ~ ~1.2 ~ 1 0.5 1 0 5 normal @a

# 魔法召喚
    execute if entity @s[scores={6L.Tick=21}] at @a[gamemode=!spectator,distance=..50,sort=random,limit=3] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute if entity @s[scores={6L.Tick=41}] at @a[gamemode=!spectator,distance=..50,sort=random,limit=3] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute if entity @s[scores={6L.Tick=61}] at @a[gamemode=!spectator,distance=..50,sort=random,limit=3] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water

# リセット
    execute if entity @s[scores={6L.Tick=81..}] run function asset:mob/0237.lunatic_mage/tick/5.reset
