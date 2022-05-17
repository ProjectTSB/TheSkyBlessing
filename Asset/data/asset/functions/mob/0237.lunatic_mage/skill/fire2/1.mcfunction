#> asset:mob/0237.lunatic_mage/skill/fire2/1
#
# 火技2を管理するよ
#
# @within function asset:mob/0237.lunatic_mage/tick/4.skill_branch

# ポーズ変更
    execute if entity @s[scores={6L.Tick=2}] run item replace entity @s armor.head with stick{CustomModelData:20200}

# 予備動作的な
    execute if entity @s[scores={6L.Tick=2}] run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if entity @s[scores={6L.Tick=..20}] run particle dust 1 0 0 1.5 ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a

# 軽く炎弾を連射
    execute if entity @s[scores={6L.Tick=25}] positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..40] eyes run function asset:mob/0237.lunatic_mage/skill/fire2/2.shoot
    execute if entity @s[scores={6L.Tick=35}] positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..40] eyes run function asset:mob/0237.lunatic_mage/skill/fire2/2.shoot
    execute if entity @s[scores={6L.Tick=45}] positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..40] eyes run function asset:mob/0237.lunatic_mage/skill/fire2/2.shoot

# リセット
    execute if entity @s[scores={6L.Tick=45..}] run function asset:mob/0237.lunatic_mage/tick/5.reset