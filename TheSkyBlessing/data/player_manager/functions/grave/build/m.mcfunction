#> player_manager:grave/build/m
#
# 名前を持っていたりする都合でマクロ化
#
# @within function player_manager:grave/build/

# 召喚
    $summon item_display ~ ~ ~ {Glowing:1b,glow_color_override:5133148,Rotation:$(Rotation),Tags:["Grave","GraveInit","Object","Uninterferable"],Passengers:[{id:"minecraft:interaction",Tags:["ProcessCommonTag","AutoKillWhenDieVehicle"]},{id:"minecraft:text_display",Rotation:$(Rotation),Tags:["ProcessCommonTag","AutoKillWhenDieVehicle"],shadow:1b,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.58f,0.25f],scale:[0.3f,0.3f,0.3f]},text:'{"text":"$(Name)","color":"white"}',background:16711680}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20346}}}

# 墓にデータセット
    execute as @e[type=item_display,tag=GraveInit,distance=..0.1,limit=1] run function player_manager:grave/build/set_data
