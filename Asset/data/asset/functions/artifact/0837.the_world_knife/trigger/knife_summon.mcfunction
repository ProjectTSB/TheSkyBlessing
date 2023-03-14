#> asset:artifact/0837.the_world_knife/trigger/knife_summon
#
#
#
# @within function asset:artifact/0837.the_world_knife/trigger/**

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    execute if entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run data modify storage lib: Argument.Spread set value 0.3
    execute unless entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run data modify storage lib: Argument.Spread set value 0.6
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    summon armor_stand ~ ~-100 ~ {Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,Pose:{Head:[10f,0f,0f]},Tags:["N9.First","N9.Knife","Projectile"],ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:837}}]}
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] eyes anchored eyes positioned ^ ^ ^2 run tp @e[type=armor_stand,tag=N9.First] ~ ~-1 ~ facing ^ ^ ^10
    data modify entity @e[type=armor_stand,tag=N9.First,distance=..10,sort=nearest,limit=1] Pose.Head[0] set from entity @e[type=armor_stand,tag=N9.First,distance=..10,sort=nearest,limit=1] Rotation[1]
# ユーザーID適応
    scoreboard players operation @e[type=armor_stand,tag=N9.First,distance=..10] N9.UserID = @s UserID
# 特定条件ですぐ投げるように
    execute unless entity @e[type=#lib:living,tag=N9.Target,distance=..30,limit=1] run scoreboard players add @e[type=armor_stand,tag=N9.First,distance=..10] N9.Time 30
# タグを消す
    tag @e[type=armor_stand,tag=N9.First,distance=..10] remove N9.First

# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..10]