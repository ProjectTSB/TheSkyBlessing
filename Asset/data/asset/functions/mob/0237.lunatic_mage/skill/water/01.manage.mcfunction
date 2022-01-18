#> asset:mob/0237.lunatic_mage/skill/water/01.manage
#
# 水魔法を管理します
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

# 予備動作的な
    execute if score @s 6J.Tick matches 1 run playsound block.portal.trigger hostile @a ~ ~ ~ 0.8 2 0
    execute if score @s 6J.Tick matches ..20 run particle fishing ~ ~1.2 ~ 1 0.5 1 0 4 normal @a

# 魔法召喚
    execute if score @s 6J.Tick matches 21 at @a[gamemode=!spectator,distance=..32] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute if score @s 6J.Tick matches 41 at @a[gamemode=!spectator,distance=..32] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute if score @s 6J.Tick matches 61 at @a[gamemode=!spectator,distance=..32] rotated ~ 0 positioned ~ ~0.3 ~ run function asset:mob/0237.lunatic_mage/magic_summon/water

# リセット
    execute if score @s 6J.Tick matches 81.. run function asset:mob/0237.lunatic_mage/tick/05.reset
