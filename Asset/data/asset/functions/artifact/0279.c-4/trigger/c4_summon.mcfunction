#> asset:artifact/0279.c-4/trigger/c4_summon
#
#
#
# @within function asset:artifact/0279.c-4/trigger/wall_check

# 設置(床、天井ではない者がいない場合。つまり床or天井の場合、プレイヤーの向きに従う)
    execute unless entity @s[tag=!7R.IsCeiling,tag=!7R.IsFloor] if entity @p[tag=this,y_rotation=-22.5..67.4] rotated ~ 0 run summon zombie ~ ~1000 ~ {Rotation:[0F,0F],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,NoGravity:1b,IsBaby:1b,Team:"NoCollision",Tags:["7R.Init","7R.C4","Object","AllowProcessingCommonTag","AlwaysInvisible"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20249}}]}
    execute unless entity @s[tag=!7R.IsCeiling,tag=!7R.IsFloor] if entity @p[tag=this,y_rotation=67.5..157.4] rotated ~ 0 run summon zombie ~ ~1000 ~ {Rotation:[90F,0F],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,NoGravity:1b,IsBaby:1b,Team:"NoCollision",Tags:["7R.Init","7R.C4","Object","AllowProcessingCommonTag","AlwaysInvisible"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20249}}]}
    execute unless entity @s[tag=!7R.IsCeiling,tag=!7R.IsFloor] if entity @p[tag=this,y_rotation=157.5..-114.9] rotated ~ 0 run summon zombie ~ ~1000 ~ {Rotation:[180F,0F],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,NoGravity:1b,IsBaby:1b,Team:"NoCollision",Tags:["7R.Init","7R.C4","Object","AllowProcessingCommonTag","AlwaysInvisible"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20249}}]}
    execute unless entity @s[tag=!7R.IsCeiling,tag=!7R.IsFloor] if entity @p[tag=this,y_rotation=-115..-22.4] rotated ~ 0 run summon zombie ~ ~1000 ~ {Rotation:[-90F,0F],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,NoGravity:1b,IsBaby:1b,Team:"NoCollision",Tags:["7R.Init","7R.C4","Object","AllowProcessingCommonTag","AlwaysInvisible"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20249}}]}

# 設置(床、天井じゃない場合、方角に従う)
    execute if entity @s[tag=7R.IsSouth,tag=!7R.IsCeiling,tag=!7R.IsFloor] rotated ~ 0 run summon zombie ~ ~1000 ~ {Rotation:[0F,0F],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,NoGravity:1b,IsBaby:1b,Team:"NoCollision",Tags:["7R.Init","7R.C4","Object","AllowProcessingCommonTag","AlwaysInvisible"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20249}}]}
    execute if entity @s[tag=7R.IsWest,tag=!7R.IsCeiling,tag=!7R.IsFloor] rotated ~ 0 run summon zombie ~ ~1000 ~ {Rotation:[90F,0F],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,NoGravity:1b,IsBaby:1b,Team:"NoCollision",Tags:["7R.Init","7R.C4","Object","AllowProcessingCommonTag","AlwaysInvisible"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20249}}]}
    execute if entity @s[tag=7R.IsNorth,tag=!7R.IsCeiling,tag=!7R.IsFloor] rotated ~ 0 run summon zombie ~ ~1000 ~ {Rotation:[180F,0F],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,NoGravity:1b,IsBaby:1b,Team:"NoCollision",Tags:["7R.Init","7R.C4","Object","AllowProcessingCommonTag","AlwaysInvisible"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20249}}]}
    execute if entity @s[tag=7R.IsEast,tag=!7R.IsCeiling,tag=!7R.IsFloor] rotated ~ 0 run summon zombie ~ ~1000 ~ {Rotation:[-90F,0F],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty",DeathTime:19s,NoGravity:1b,IsBaby:1b,Team:"NoCollision",Tags:["7R.Init","7R.C4","Object","AllowProcessingCommonTag","AlwaysInvisible"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20249}}]}

# Init処理
    execute positioned ~ ~1000 ~ as @e[type=zombie,tag=7R.Init,distance=..10] at @s positioned ~ ~-1000 ~ run function asset:artifact/0279.c-4/trigger/c4_init