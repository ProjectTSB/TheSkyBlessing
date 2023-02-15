#> asset:mob/309.brave_arrow_finish/tick/event/tp
#
#
#
# @within function asset:mob/309.brave_arrow_finish/tick/event/move

# TP
    tp @s ^ ^ ^1.0 ~ ~

# パーティクル
    particle electric_spark ^ ^ ^0 0 0 0 0 1 force @a[distance=..60]
    particle dust 1 1 1 0.7 ^ ^ ^0.8 0 0 0 0 1 force @a[distance=..60]
    particle dust 0.6 0.9 1 0.9 ^ ^ ^1 0 0 0 0 1 force @a[distance=..60]

# ヒット判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0] run function asset:mob/309.brave_arrow_finish/tick/event/hit

# ブロック内が目の前にあったらキル
    execute unless block ^ ^ ^1 #lib:no_collision run kill @s