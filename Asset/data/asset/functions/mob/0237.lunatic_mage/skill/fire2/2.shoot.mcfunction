#> asset:mob/0237.lunatic_mage/skill/fire2/2.shoot
#
# 3way弾を打つよ
#
# @within function asset:mob/0237.lunatic_mage/skill/fire2/1

# 演出
    playsound entity.blaze.shoot hostile @a[distance=..25] ~ ~ ~ 1.2 1.5 0.9

# 発射
    execute positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire
    execute rotated ~20 ~ positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire
    execute rotated ~-20 ~ positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire