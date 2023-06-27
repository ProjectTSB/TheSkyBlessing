#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/explosion
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/end

# パーティクル
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..60]
    particle minecraft:lava ~ ~ ~ 0 0 0 0 10
    particle minecraft:electric_spark ~ ~ ~ 0 0 0 2 100

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 2 1
    playsound minecraft:entity.wither.break_block hostile @a ~ ~ ~ 2 1.5