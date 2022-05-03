#> asset:mob/0237.lunatic_mage/skill/elemental_confine/7.shoot_fire
#
#
#
# @within function
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/6.fire
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/9.fire2

# 音
    playsound entity.blaze.shoot hostile @a[distance=..25] ~ ~ ~ 1.2 1.5 0.9

# 発射(前)
    execute anchored eyes positioned ^-0.25 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire

# 発射(後)
    execute anchored eyes positioned ^0.25 ^ ^ rotated ~180 0 run function asset:mob/0237.lunatic_mage/magic_summon/fire