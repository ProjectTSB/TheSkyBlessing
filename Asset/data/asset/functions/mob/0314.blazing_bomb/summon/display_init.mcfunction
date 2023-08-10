#> asset:mob/0314.blazing_bomb/summon/display_init
#
# ディスプレイにInitかます
#
# @within function asset:mob/0314.blazing_bomb/summon/2.summon

#> MobInitを定義
# @private
    #declare storage 8q:display
    #declare tag MobInit

# ベースの角度設定
    data modify storage 8q:display temporary.AngleX set value {axis:[1f,0f,0f],angle:0}
    data modify storage 8q:display temporary.AngleY set value {axis:[0f,1f,0f],angle:0}

# プレイヤーの向きを取得
    execute store result storage 8q:display temporary.AngleX.angle float 0.01745 run data get entity @e[type=armor_stand,tag=MobInit,sort=nearest,limit=1] Rotation[1] 1
    execute store result storage 8q:display temporary.AngleY.angle float 0.01745 run data get entity @e[type=armor_stand,tag=MobInit,sort=nearest,limit=1] Rotation[0] -1

# ストレージのデータを移す
    data modify entity @s transformation.right_rotation set from storage 8q:display temporary.AngleX
    data modify entity @s transformation.left_rotation set from storage 8q:display temporary.AngleY

# サイズと見た目
    data merge entity @s {item:{id:"minecraft:leather_horse_armor",Count:1b,tag:{display:{color:16737792},CustomModelData:20334}},transformation:{scale:[1.5f,1.5f,1.5f]}}