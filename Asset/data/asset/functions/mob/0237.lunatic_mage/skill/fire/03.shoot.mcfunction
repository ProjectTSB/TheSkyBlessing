#> asset:mob/0237.lunatic_mage/skill/fire/03.shoot
#
# 発射します
#
# @within function asset:mob/0237.lunatic_mage/skill/fire/01.manage

# 音
    playsound entity.blaze.shoot hostile @a[distance=..25] ~ ~ ~ 1.2 1.5 0.9

# 発射
    execute anchored eyes positioned ^-0.25 ^ ^ rotated ~ 0 run function asset:mob/0237.lunatic_mage/magic_summon/fire

# 発射(後ろ向き)
    execute anchored eyes positioned ^0.25 ^ ^ rotated ~180 0 run function asset:mob/0237.lunatic_mage/magic_summon/fire

# 回転
    execute if entity @s[tag=6L.LeftRotation] run tp @s ~ ~ ~ ~-15 ~
    execute if entity @s[tag=!6L.LeftRotation] run tp @s ~ ~ ~ ~15 ~