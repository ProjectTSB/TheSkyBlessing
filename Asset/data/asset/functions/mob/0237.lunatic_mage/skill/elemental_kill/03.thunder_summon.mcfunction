#> asset:mob/0237.lunatic_mage/skill/elemental_kill/03.thunder_summon
#
# 雷魔法を召喚するよ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage

# 召喚
    function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ~3.2 ~ ~ run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ~ ~ ~3.2 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ~ ~ ~-3.2 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ~-3.2 ~ ~ run function asset:mob/0237.lunatic_mage/magic_summon/thunder