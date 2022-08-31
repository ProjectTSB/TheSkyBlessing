#> asset:mob/1011.meteor/summon/3.init
#
#
#
# @within function asset:mob/1011.meteor/summon/2.summon

#> SpreadLib
# @private
#declare tag SpreadMarker

# 前の拡散マーカーを消す
   #kill @e[type=marker,tag=SpreadMarker,distance=..50]

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    #data modify storage lib: Argument.Bounds set value [[24d,24d],[0d,0d],[24d,24d]]
    #execute as @e[type=marker,tag=SpreadMarker2,distance=..50] at @r run function lib:spread_entity/
    spreadplayers ~ ~ 15 15 false @e[type=marker,tag=SpreadMarker,distance=..100]

# マーカーの方を向く
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=SpreadMarker,distance=..100,limit=1]

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..70]

# マーカーに対してパーティクル
    execute at @e[type=marker,tag=SpreadMarker,distance=..100,limit=1] positioned ~ ~0.1 ~ run function asset:mob/1011.meteor/summon/particle

# 速度と飛距離
    scoreboard players set @s S3.Range 800
    scoreboard players set @s S3.Speed 16

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..100]
