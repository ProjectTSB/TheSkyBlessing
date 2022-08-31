#> asset:mob/1004.tultaria/tick/move/teleport/place_marker
#
#
#
# @within function asset:mob/1004.tultaria/tick/**

# 移動先を設置
    summon marker ~ ~ ~ {Tags:[RW.TeleportMarker,RW.MarkerInit]}

# 演出

# 拡散値
    data modify storage lib: Argument.Bounds set value [[4d,6d],[0d,0d],[4d,6d]]
    #data modify storage lib: Argument.Bounds set value [[8d,12d],[0d,3d],[8d,12d]]
    #data modify storage lib: Argument.Bounds set value [[1d,1d],[0.2d,0.8d],[1d,1d]]
    execute as @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] at @s run function lib:spread_entity/

# 右腕腕ポーズ
    data modify entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,20f]

# 右腕アイテム
    item replace entity @e[type=armor_stand,tag=RW.ModelBody,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20071}

# リセット
    tag @e[type=marker,tag=RW.TeleportMarker,tag=RW.MarkerInit] remove RW.MarkerInit

# 速度設定
    scoreboard players set @s RW.Speed 10

# 行動中タグ付与
    tag @s add RW.Move