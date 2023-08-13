#> asset:mob/0324.slash_entity/tick/init
#
#
#
# @within function asset:mob/0324.slash_entity/tick/

# 向きを召喚者準拠に
    execute store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
    execute store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]

# サイズを決める
    data modify entity @s transformation.scale set from storage asset:context this.Scale

# 角度を決める
    data modify storage 90.storage: Rotation set value {axis:[0f,0f,1f],angle:0}
    execute store result storage 90.storage: Rotation.angle float 0.01745 run data get storage asset:context this.Rotation
    data modify entity @s transformation.left_rotation set from storage 90.storage: Rotation
    data remove storage 90.storage: Rotation

# Init完了
    tag @s add 90.Init