#> asset:mob/0314.blazing_bomb/tick/event/lingering/
#
#
#
# @within function asset:mob/0314.blazing_bomb/tick/2.tick

# パーティクル
    particle minecraft:flame ~ ~0.2 ~ 3 0 3 0 20 force

# 攻撃判定
    execute positioned ~-9 ~0 ~-9 if entity @a[dx=17,dy=0,dz=17] at @s as @a[distance=..5] run function asset:mob/0314.blazing_bomb/tick/event/lingering/damage

# しばらくするときえる
    execute if score @s 8Q.Tick matches 100 run kill @s