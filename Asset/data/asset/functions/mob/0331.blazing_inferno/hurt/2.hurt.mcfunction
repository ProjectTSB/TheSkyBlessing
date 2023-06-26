#> asset:mob/0331.blazing_inferno/hurt/2.hurt
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/0331.blazing_inferno/hurt/1.trigger

# サウンド
    playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1.5 1
    playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1.5 0.6
    playsound minecraft:block.deepslate.break hostile @a ~ ~ ~ 1.5 0.5