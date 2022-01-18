#> asset:mob/0237.lunatic_mage/skill/elemental_kill/04.thunder_summon2
#
# 3回目の雷だよ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage

# 召喚
    function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ~3.2 ~ ~3.2 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ~3.2 ~ ~-3.2 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ~-3.2 ~ ~3.2 run function asset:mob/0237.lunatic_mage/magic_summon/thunder
    execute positioned ~-3.2 ~ ~-3.2 run function asset:mob/0237.lunatic_mage/magic_summon/thunder