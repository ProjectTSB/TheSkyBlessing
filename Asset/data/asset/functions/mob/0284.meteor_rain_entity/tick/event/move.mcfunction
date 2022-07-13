#> asset:mob/0284.meteor_rain_entity/tick/event/move
#
#
#
# @within function asset:mob/0284.meteor_rain_entity/tick/2.tick

# パーティクル
    particle dust 1 0 0 1 ~ ~ ~ 0.2 0.2 0.2 0 2
    particle dust 0.2 0.2 0.2 1.5 ~ ~ ~ 0.1 0.1 0.1 0 1

# モブに当たると爆発
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 run function asset:mob/0284.meteor_rain_entity/tick/event/explosion

# 着弾
    execute unless block ~ ~ ~ #lib:no_collision run function asset:mob/0284.meteor_rain_entity/tick/event/explosion

# 落下する
    tp @s ^ ^ ^0.5