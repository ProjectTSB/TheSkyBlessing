#> asset:mob/0314.blazing_bomb/tick/event/lingering/aoe
#
# ダメージエリアとその見た目
#
# @within function asset:mob/0314.blazing_bomb/tick/event/lingering/

# パーティクル
    particle minecraft:flame ~ ~0.2 ~ 2 0 2 0 20 force
    particle minecraft:dust 1 0.4 0 2 ~ ~0.2 ~ 2 0 2 0 20 force @a[distance=..30]
    particle minecraft:lava ~ ~0.2 ~ 3 0 3 0 5

# ダメージ判定
    execute positioned ~-9 ~0 ~-9 if entity @a[tag=!PlayerShouldInvulnerable,dx=17,dy=0,dz=17] at @s as @a[distance=..5] run function asset:mob/0314.blazing_bomb/tick/event/lingering/damage