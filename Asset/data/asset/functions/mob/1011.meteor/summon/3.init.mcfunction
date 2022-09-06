#> asset:mob/1011.meteor/summon/3.init
#
#
#
# @within function asset:mob/1011.meteor/summon/2.summon

#> SpreadLib
# @private
#declare tag SpreadMarker

# markerをスプレッドで拡散
    spreadplayers ~ ~ 15 20 under 200 false @e[type=marker,tag=SpreadMarker,distance=..100]

# マーカーの方を向く
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,distance=..100,limit=1]

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..100]

# マーカーに対してパーティクル
    execute at @e[type=marker,tag=SpreadMarker,distance=..100,limit=1] positioned ~ ~0.1 ~ run function asset:mob/1011.meteor/summon/particle

# 速度と飛距離
    scoreboard players set @s S3.Range 800
    scoreboard players set @s S3.Speed 16