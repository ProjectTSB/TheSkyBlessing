#> asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage
#
# プレイヤーを殺す技
#
# @within function asset:mob/0237.lunatic_mage/tick/04.skill_branch

#> Private
# @private
    #declare tag 6J.ElementalKillPoint

# 二回目を発動しないようにTagつけ
    tag @s add 6J.AlreadyElement

# 予備動作的な
    execute if score @s 6J.Tick matches 2 run playsound block.portal.trigger hostile @a ~ ~ ~ 0.5 2 0
    execute if score @s 6J.Tick matches ..20 run particle flame ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a
    execute if score @s 6J.Tick matches ..20 run particle splash ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a
    execute if score @s 6J.Tick matches ..20 run particle dust 1 1 0 1.3 ~ ~1.2 ~ 1 0.5 1 0.3 5 normal @a

# AEC召喚
    execute if score @s 6J.Tick matches 21 at @r[gamemode=!spectator,distance=..32] run summon area_effect_cloud ~ ~1.3 ~ {Tags:["6J.ElementalKillPoint"],Particle:"block air",Duration:120}

# 水魔法をターゲットの足元に召喚
    execute if score @s 6J.Tick matches 22 at @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..40,limit=1] positioned ~ ~-1 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_kill/02.water_summon
    execute if score @s 6J.Tick matches 47 at @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..40,limit=1] positioned ~ ~-1 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_kill/02.water_summon
    execute if score @s 6J.Tick matches 72 at @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..40,limit=1] positioned ~ ~-1 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_kill/02.water_summon
    execute if score @s 6J.Tick matches 97 at @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..40,limit=1] positioned ~ ~-1 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_kill/02.water_summon
    execute if score @s 6J.Tick matches 122 at @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..40,limit=1] positioned ~ ~-1 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_kill/02.water_summon


# 雷魔法
    execute if score @s 6J.Tick matches 22 at @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..40,limit=1] positioned ~ ~-1 ~ run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute if score @s 6J.Tick matches 62 at @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..40,limit=1] positioned ~ ~-1 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_kill/03.thunder_summon
    execute if score @s 6J.Tick matches 102 at @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..40,limit=1] positioned ~ ~-1 ~ run function asset:mob/0237.lunatic_mage/skill/elemental_kill/04.thunder_summon2

# 火魔法を飛ばす
    execute if score @s 6J.Tick matches 60 positioned ~ ~1.6 ~ facing entity @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..60,limit=1] feet run function asset:mob/0237.lunatic_mage/skill/elemental_kill/05.fire_summon
    execute if score @s 6J.Tick matches 110 positioned ~ ~1.6 ~ facing entity @e[type=area_effect_cloud,tag=6J.ElementalKillPoint,distance=..60,limit=1] feet run function asset:mob/0237.lunatic_mage/skill/elemental_kill/05.fire_summon

# リセット
    execute if score @s 6J.Tick matches 141.. run function asset:mob/0237.lunatic_mage/tick/05.reset