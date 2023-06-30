#> asset:mob/0311.blazing_inferno/tick/base_move/teleport_vfx
#
# ワープ時に使う演出
#
# @within function asset:mob/0311.blazing_inferno/tick/**

# パーティクル
    particle minecraft:flame ~ ~1 ~ 0 0 0 0.1 10
    particle minecraft:explosion ~ ~1 ~ 0 0 0 0 1

# サウンド
    playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5