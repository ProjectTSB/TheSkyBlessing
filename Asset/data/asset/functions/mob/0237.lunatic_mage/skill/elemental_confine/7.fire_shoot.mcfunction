#> asset:mob/0237.lunatic_mage/skill/elemental_confine/7.fire_shoot
#
# 火の弾の発射処理
#
# @within function
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/5.fire
#   asset:mob/0237.lunatic_mage/skill/elemental_confine/6.fire2

# 火を発射
    execute anchored eyes run function asset:mob/0237.lunatic_mage/skill/elemental_confine/8.fire_recursive
    execute rotated ~180 ~ anchored eyes run function asset:mob/0237.lunatic_mage/skill/elemental_confine/8.fire_recursive

# ヒット処理
    execute as @a[tag=LandingTarget,distance=..25] run function asset:mob/0237.lunatic_mage/skill/elemental_confine/9.fire_hit

# 音
    playsound entity.blaze.shoot hostile @a[distance=..25] ~ ~ ~ 1 1.2 0