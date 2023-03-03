#> asset:artifact/0953.meteor_rain/trigger/7.cast_meteor
#
# メテオを召喚して拡散させる
#
# @within function asset:artifact/0953.meteor_rain/trigger/6.summon_meteor

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[32d,32d],[10d,0d],[32d,32d]]
    execute as @e[type=marker,tag=SpreadMarker,distance=..50] at @s run function lib:spread_entity/

# 拡散したマーカーの上空に召喚
    execute at @e[type=marker,tag=SpreadMarker,distance=..50] positioned ~ ~ ~ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["Friend","Projectile","QH.Meteor","QH.MeteorInit"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20197}}}]}

# 自身のIDを発射体にも付与
    scoreboard players operation @e[type=armor_stand,tag=QH.MeteorInit,distance=..50] QH.UserID = @s UserID

# init処理実行
    execute as @e[type=armor_stand,tag=QH.MeteorInit,distance=..50,sort=nearest,limit=1] at @s run function asset:artifact/0953.meteor_rain/trigger/meteor/1.init

# メテオのループ処理開始
    schedule function asset:artifact/0953.meteor_rain/trigger/meteor/2.tick 1t replace

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker,distance=..50]
