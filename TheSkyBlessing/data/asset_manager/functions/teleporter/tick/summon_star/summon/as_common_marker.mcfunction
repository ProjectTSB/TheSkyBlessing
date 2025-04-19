#> asset_manager:teleporter/tick/summon_star/summon/as_common_marker
#
#
#
# @within function asset_manager:teleporter/tick/summon_star/summon/

# テレポーターのデータを取得する
    data modify storage asset:teleporter TargetTeleporter set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Temp.Teleporters[-1].Data
# 汎用entityを現地へ
    data modify entity @s Pos set from storage asset:teleporter TargetTeleporter.Data.Pos
    execute at @s run tp @s ~0.5 ~ ~0.5
# プレイヤーからその方向の 1.5 ブロック先に星を召喚する
    execute unless entity @s[distance=..15] facing entity @s feet run summon item_display ^ ^ ^1.5 {Tags:["TPStar","TPStarInit"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.281f,-0.363f,-0.117f,0.881f],translation:[0f,0f,0f],scale:[0.05f,0.05f,0f]},item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:20330,display:{color:16777215}}},brightness:{sky:15,block:15},billboard:"center",Rotation:[0f,-90f],teleport_duration:1}
    execute unless entity @s[distance=..15] facing entity @s feet positioned ^ ^ ^1.5 as @e[type=item_display,tag=TPStarInit,distance=..0.01,limit=1] run function asset_manager:teleporter/tick/summon_star/summon/set_data
# 原点へお帰り
    execute in overworld run tp @s 0.0 0.0 0.0
# リセット
    data remove storage asset:teleporter TargetTeleporter
