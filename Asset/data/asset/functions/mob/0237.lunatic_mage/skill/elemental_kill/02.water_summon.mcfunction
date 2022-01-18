#> asset:mob/0237.lunatic_mage/skill/elemental_kill/02.water_summon
#
# 足元に水魔法を召喚するよ
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage

# 召喚
    execute positioned ^ ^ ^3.2 run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute positioned ^ ^ ^-3.2 run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute positioned ^3.2 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/water
    execute positioned ^-3.2 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/water

