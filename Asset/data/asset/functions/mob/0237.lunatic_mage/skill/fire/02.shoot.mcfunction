#> asset:mob/0237.lunatic_mage/skill/fire/02.shoot
#
# 発射します
#
# @within function asset:mob/0237.lunatic_mage/skill/fire/01.manage

# 音
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 1 1.5 0

# 発射
    execute anchored eyes positioned ^-0.25 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire
    execute anchored eyes positioned ^-0.25 ^ ^ run tp @e[type=marker,tag=58.Init,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~ 0

# 発射(後ろ向き)
    execute anchored eyes positioned ^0.25 ^ ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire
    execute anchored eyes positioned ^0.25 ^ ^ run tp @e[type=marker,tag=58.Init,distance=..0.01,sort=nearest,limit=1] ~ ~ ~ ~-180 0

# 回転
    tp @s ~ ~ ~ ~15 ~