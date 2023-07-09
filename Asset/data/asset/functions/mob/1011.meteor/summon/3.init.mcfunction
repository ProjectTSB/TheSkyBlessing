#> asset:mob/1011.meteor/summon/3.init
#
#
#
# @within function asset:mob/1011.meteor/summon/2.summon

#> SpreadLibとトゥルタリアの出現位置
# @private
#declare tag MeteorSpreadMarker
#declare tag RW.Marker.SpawnPoint

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["MeteorSpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[16d,16d],[0d,0d],[16d,16d]]
    execute as @e[type=marker,tag=MeteorSpreadMarker,distance=..100,limit=1] at @e[type=marker,tag=RW.Marker.SpawnPoint,sort=nearest,limit=1] run function lib:spread_entity/

# マーカーの方を向く
    tp @s ~ ~ ~ facing entity @e[type=marker,tag=MeteorSpreadMarker,distance=..200,limit=1]

# マーカーに対してパーティクル
    execute at @e[type=marker,tag=MeteorSpreadMarker,distance=..200,limit=1] positioned ~ ~-0.1 ~ run function asset:mob/1011.meteor/summon/particle

# 拡散マーカーを消す
   kill @e[type=marker,tag=MeteorSpreadMarker,distance=..200]

# パーティクル
    particle explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..100]

# 存在時間を設定
    scoreboard players set @s S3.LifeTime 100