#> asset:artifact/0837.the_world_knife/trigger/knife/summon/
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/**

#> private
# @private
    #declare tag N9.Temp

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    execute if entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run data modify storage lib: Argument.Spread set value 0.3
    execute unless entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run data modify storage lib: Argument.Spread set value 0.2
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# データを用意
    execute positioned ^ ^-0.8 ^1 run summon marker ~ ~ ~ {Tags:["N9.Temp"]}
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run tp @e[type=marker,tag=N9.Temp,limit=1] ~ ~ ~ facing ^ ^ ^10
    data modify storage asset:temp 837.Rotation set from entity @e[type=marker,tag=N9.Temp,limit=1] Rotation
    data modify storage asset:temp 837.Pose set value [0f,0f,0f]
    data modify storage asset:temp 837.Pose[0] set from storage asset:temp 837.Rotation[1]
# 弾を召喚
    execute positioned ^ ^-0.8 ^1 run function asset:artifact/0837.the_world_knife/trigger/knife/summon/exec.m with storage asset:temp 837
# ユーザーID適応
    scoreboard players operation @e[type=armor_stand,tag=N9.First,distance=..10] N9.UserID = @s UserID
# 特定条件ですぐ投げるように
    execute unless entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run scoreboard players add @e[type=armor_stand,tag=N9.First,distance=..10] N9.Time 15
# 特定条件でナイフの固定
    execute if entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run scoreboard players set @e[type=armor_stand,tag=N9.Knife,tag=!N9.Start,distance=..10] N9.Time 0
# タグを消す
    tag @e[type=armor_stand,tag=N9.First,distance=..10] remove N9.First

# リセット
    data remove storage asset:temp 837
    kill @e[type=marker,tag=N9.Temp,distance=..10]
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
