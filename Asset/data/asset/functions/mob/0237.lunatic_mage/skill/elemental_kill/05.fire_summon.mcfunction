#> asset:mob/0237.lunatic_mage/skill/elemental_kill/05.fire_summon
#
# 火魔法を飛ばす
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_kill/01.manage

# 召喚
    execute rotated ~ ~ positioned ^-0.25 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire
    execute rotated ~15 ~ positioned ^-0.25 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire
    execute rotated ~-15 ~ positioned ^-0.25 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire

