#> asset:mob/0237.lunatic_mage/skill/fire2/2.shoot
#
# 3wayの火の弾を発射する処理
#
# @within function asset:mob/0237.lunatic_mage/skill/fire2/1

# 演出
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 3 1.5
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 3 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 3 0.7

# 発射
    execute positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire
    execute rotated ~20 ~ positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire
    execute rotated ~-20 ~ positioned ^-0.25 ^-0.25 ^ run function asset:mob/0237.lunatic_mage/magic_summon/fire