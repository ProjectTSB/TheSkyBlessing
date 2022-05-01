#> asset:mob/0237.lunatic_mage/skill/elemental_confine/07.shoot_fire
#
#
#
# @within function asset:mob/0237.lunatic_mage/skill/elemental_confine/06.fire

# 音
    playsound entity.blaze.shoot hostile @a[distance=..25] ~ ~ ~ 1.2 1.5 0.9

# 発射(左)
    execute anchored eyes positioned ^-0.25 ^ ^ rotated ~90 0 run function asset:mob/0237.lunatic_mage/magic_summon/fire

# 発射(右)
    execute anchored eyes positioned ^0.25 ^ ^ rotated ~270 0 run function asset:mob/0237.lunatic_mage/magic_summon/fire

# 回転
    tp @s ~ ~ ~ ~-15 ~
