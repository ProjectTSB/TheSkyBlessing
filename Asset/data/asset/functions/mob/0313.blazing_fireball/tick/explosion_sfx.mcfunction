#> asset:mob/0313.blazing_fireball/tick/explosion_sfx
#
#
#
# @within function asset:mob/0313.blazing_fireball/tick/explosion

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..60]
    particle lava ~ ~ ~ 0 0 0 0 2

# サウンド
    playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 2
    playsound minecraft:block.basalt.break hostile @a ~ ~ ~ 1 0.5