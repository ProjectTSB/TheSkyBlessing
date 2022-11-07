#> asset:mob/0284.lexiel/tick/move/teleport/place_marker
#
#
#
# @within function asset:mob/0284.lexiel/tick/**

# 残ってたらヤなのでマーカーを消す
    kill @e[type=marker,tag=7W.TeleportMarker,sort=nearest,limit=1]

# 移動先を設置
    summon marker ~ ~ ~ {Tags:[7W.TeleportMarker,7W.MarkerInit]}

# 拡散値
    execute if block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[4d,6d],[3d,3d],[4d,6d]]
    execute unless block ~ ~-1 ~ #lib:no_collision run data modify storage lib: Argument.Bounds set value [[4d,6d],[0d,6d],[4d,6d]]
    execute as @e[type=marker,tag=7W.TeleportMarker,tag=7W.MarkerInit] at @s run function lib:spread_entity/

# 右腕ポーズ
    data modify entity @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] Pose.RightArm set value [10f,0f,20f]

# 右腕アイテム
    item replace entity @e[type=armor_stand,tag=7W.ModelBody,tag=7W.ModelChangeTarget,distance=..0.5,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20287}

# リセット
    tag @e[type=marker,tag=7W.TeleportMarker,tag=7W.MarkerInit] remove 7W.MarkerInit

# 行動中タグ付与
    tag @s add 7W.Move

