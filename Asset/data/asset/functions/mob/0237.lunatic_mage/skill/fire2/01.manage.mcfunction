#> asset:mob/0237.lunatic_mage/skill/fire2/01.manage
#
# 火技2を管理するよ
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

# 予備動作的な
    execute if score @s 6J.Tick matches 2 run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if score @s 6J.Tick matches ..20 run particle flame ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a

# 軽く炎弾を連射
    execute if score @s 6J.Tick matches 25 positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..40] eyes run function asset:mob/0237.lunatic_mage/skill/fire2/02.shoot
    execute if score @s 6J.Tick matches 35 positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..40] eyes run function asset:mob/0237.lunatic_mage/skill/fire2/02.shoot
    execute if score @s 6J.Tick matches 45 positioned ~ ~1.6 ~ facing entity @p[gamemode=!spectator,distance=..40] eyes run function asset:mob/0237.lunatic_mage/skill/fire2/02.shoot

# リセット
    execute if score @s 6J.Tick matches 45.. run function asset:mob/0237.lunatic_mage/tick/05.reset