#> asset:mob/0284.meteor_rain_entity/tick/event/init
#
#
#
# @within function asset:mob/0284.meteor_rain_entity/tick/2.tick

# 向き
    #execute facing entity @e[tag=Enemy,distance=..64,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
    #execute unless entity @e[tag=Enemy,distance=..64,limit=1] run tp @s ~ ~ ~ ~ 90
    tp @s ~ ~ ~ ~ 90

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 1 force

# タグ削除
    tag @s remove 7W.Init