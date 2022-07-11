#> asset:mob/0237.lunatic_mage/skill/fire/2.shoot
#
# 火の弾を発射する
#
# @within function asset:mob/0237.lunatic_mage/skill/fire/1

# 音
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 3 0.7

# 発射
    execute anchored eyes positioned ^-0.25 ^-0.25 ^ rotated ~ 0 run function asset:mob/0237.lunatic_mage/magic_summon/fire

# 発射(後ろ向き)
    execute anchored eyes positioned ^0.25 ^-0.25 ^ rotated ~180 0 run function asset:mob/0237.lunatic_mage/magic_summon/fire

# 回転
    execute if entity @s[tag=6L.LeftRotation] run tp @s ~ ~ ~ ~-15 ~
    execute if entity @s[tag=!6L.LeftRotation] run tp @s ~ ~ ~ ~15 ~