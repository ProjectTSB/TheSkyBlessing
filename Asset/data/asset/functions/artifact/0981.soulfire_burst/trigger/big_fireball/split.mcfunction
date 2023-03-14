#> asset:artifact/0981.soulfire_burst/trigger/big_fireball/split
#
# 飛距離の限界で炸裂する
#
# @within function asset:artifact/0981.soulfire_burst/trigger/big_fireball/4.move

# コピー時の対象を自身にだけ限定するタグ
    tag @s add R9.CopyBase

# 演出
    playsound minecraft:block.respawn_anchor.set_spawn neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.blaze.shoot neutral @a ~ ~ ~ 2 0.8
    playsound minecraft:block.soul_sand.step neutral @a ~ ~ ~ 2 1
    playsound minecraft:block.soul_sand.step neutral @a ~ ~ ~ 2 1.2

# 小さい火の玉をいっぱい召喚
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["R9.SmallFireball","R9.Init","Projectile"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20234,CustomPotionColor:8639743}}}]}
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["R9.SmallFireball","R9.Init","Projectile"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20234,CustomPotionColor:8639743}}}]}
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["R9.SmallFireball","R9.Init","Projectile"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20234,CustomPotionColor:8639743}}}]}
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["R9.SmallFireball","R9.Init","Projectile"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20234,CustomPotionColor:8639743}}}]}
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["R9.SmallFireball","R9.Init","Projectile"],Passengers:[{id:"minecraft:snowball",Tags:["AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Item:{id:"minecraft:potion",Count:1b,tag:{CustomModelData:20234,CustomPotionColor:8639743}}}]}

# 火の玉にInit処理
    execute as @e[type=armor_stand,tag=R9.SmallFireball,tag=R9.Init,distance=..10,sort=nearest,limit=5] run function asset:artifact/0981.soulfire_burst/trigger/small_fireball/1.init

# スケジュールループ開始
    schedule function asset:artifact/0981.soulfire_burst/trigger/small_fireball/2.tick 1t

# キル
    kill @s