#> asset:mob/0319.haruclaire_ice_bullet/summon/init
#
# Mobの召喚時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/summon/2.summon

# モデルの角度設定
    data modify entity @s Pose.Head set value [0f,0f,1f]
    data modify entity @s Pose.Head[0] set from entity @s Rotation[1]

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 8
    data modify storage lib: Argument.Spread set value 1
    execute facing entity @p[gamemode=!spectator,distance=..30] feet as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes run tp @s ~ ~ ~ ~ ~

# 飛距離と速度(m/tick)を設定
    scoreboard players set @s 8V.Range 400
    scoreboard players set @s 8V.Speed 7

# リセット
    kill @e[type=marker,tag=SpreadMarker]