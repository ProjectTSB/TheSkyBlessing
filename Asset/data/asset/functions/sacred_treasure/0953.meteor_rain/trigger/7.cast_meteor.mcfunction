#> asset:sacred_treasure/0953.meteor_rain/trigger/7.cast_meteor
#
# メテオを召喚して拡散させる
#
# @within function asset:sacred_treasure/0953.meteor_rain/trigger/6.summon_meteor

#> SpreadLib
# @private
#declare tag SpreadMarker

# 拡散用marker召喚
    summon marker ~ ~0.5 ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Bounds set value [[32d,32d],[10d,0d],[32d,32d]]
    execute as @e[type=marker,tag=SpreadMarker] at @s run function lib:spread_entity/

# 拡散したマーカーの上空に召喚
    execute at @e[type=marker,tag=SpreadMarker] positioned ~ ~40 ~ run particle explosion ~ ~ ~ 0 0 0 1 1 force

# 自身のIDを発射体にも付与
    scoreboard players operation @e[type=armor_stand,tag=QH.MeteorInit,distance=..50] QH.UserID = @s UserID

# 拡散マーカーを消す
   kill @e[type=marker,tag=SpreadMarker]
