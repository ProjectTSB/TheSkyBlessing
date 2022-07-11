#> asset:mob/0237.lunatic_mage/skill/water/1
#
# 水スキルのメイン処理
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# ポーズ変更
    execute if entity @s[scores={6L.Tick=2}] run item replace entity @s armor.head with stick{CustomModelData:20200}

# 予備動作的な
    execute if entity @s[scores={6L.Tick=1}] run playsound block.portal.trigger hostile @a[distance=..30] ~ ~ ~ 0.8 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 0.17 0.34 1 1.5 ~ ~1 ~ 0.4 0.5 0.4 0.3 3 force @a[distance=..20]
    execute if entity @s[scores={6L.Tick=..20}] positioned ~ ~2.4 ~ positioned ^-0.6 ^ ^0.4 run particle splash ~ ~ ~ 0 0 0 0.02 10

# 魔法召喚
    execute if entity @s[scores={6L.Tick=21}] at @a[gamemode=!spectator,distance=..50,sort=random,limit=5] positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute if entity @s[scores={6L.Tick=41}] at @a[gamemode=!spectator,distance=..50,sort=random,limit=5] positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute if entity @s[scores={6L.Tick=61}] at @a[gamemode=!spectator,distance=..50,sort=random,limit=5] positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water

# リセット
    execute if entity @s[scores={6L.Tick=66..}] run function asset:mob/0237.lunatic_mage/tick/5.reset
