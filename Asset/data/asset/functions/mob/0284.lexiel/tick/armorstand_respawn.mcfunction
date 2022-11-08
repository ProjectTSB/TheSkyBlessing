#> asset:mob/0284.lexiel/tick/armorstand_respawn
#
#
#
# @within function asset:mob/0284.lexiel/tick/2.tick

# どっかいったアマスタを殺す
    execute as @e[type=armor_stand,tag=7W.Model] at @s positioned ~ ~-0.29 ~ unless entity @e[type=wither_skeleton,tag=7W.Boss,distance=..0.01] run kill @s
    execute as @e[type=snowball,tag=7W.ModelCore] at @s unless entity @e[type=wither_skeleton,tag=7W.Boss,distance=..0.01] run kill @s
# 見た目用のアマスタを召喚
    summon snowball ~ ~ ~ {NoGravity:1b,Item:{id:"minecraft:debug_stick",Count:1b,tag:{CustomModelData:4040}},Tags:["7W.ModelCore","7W.ModelCoreThis","Object","Uninterferable"],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Marker:0b,Invisible:1b,Tags:["7W.Model","7W.ModelHead","7W.ModelChangeTarget","Object","AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Pose:{Head:[25f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20296}}]},{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Marker:0b,Invisible:1b,Tags:["7W.Model","7W.ModelBody","7W.ModelChangeTarget","Object","AllowProcessingCommonTag","AutoKillWhenDieVehicle","Uninterferable"],Pose:{LeftArm:[-115f,0f,-75f],RightArm:[-90f,0f,75f],Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20286}},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20289}}],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20290}}]}]}
# 位置をあわせる
    execute as @e[type=wither_skeleton,tag=7W.Boss,distance=..0.01] at @s run tp @e[type=snowball,tag=7W.ModelCoreThis,distance=..0.01] @s
# タグを消す
    tag @e[type=snowball,tag=7W.ModelCoreThis,distance=..0.01] remove 7W.ModelCoreThis
# スコアも一応戻す
    scoreboard players set @s 7W.Tick -30
    tag @s remove 7W.TickLock

    execute at @s run function asset:mob/0284.lexiel/tick/reset
# 強制的にテレポする
    #data modify storage lib: Argument.Bounds set value [[8d,8d],[0d,0d],[8d,8d]]
    #function asset:mob/0284.lexiel/tick/move/spread