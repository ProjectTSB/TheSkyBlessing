#> asset:mob/0314.blazing_bomb/tick/event/fireball/display_rotation
#
# モデルを動かす
#
# @within function asset:mob/0314.blazing_bomb/tick/event/fireball/move

#> ストレージを定義
# @private
    #declare storage 8q:display

# ベースの角度設定
    data modify storage 8q:display temporary.AngleX set value {axis:[1f,0f,0f],angle:0}
    data modify storage 8q:display temporary.AngleY set value {axis:[0f,1f,0f],angle:0}

# プレイヤーの向きを取得
    execute store result storage 8q:display temporary.AngleX.angle float 0.01745 run data get entity @e[type=armor_stand,scores={MobID=314},sort=nearest,limit=1] Rotation[1] 1
    execute store result storage 8q:display temporary.AngleY.angle float 0.01745 run data get entity @e[type=armor_stand,scores={MobID=314},sort=nearest,limit=1] Rotation[0] -1

# ストレージのデータを移す
    data modify entity @s transformation.right_rotation set from storage 8q:display temporary.AngleX
    data modify entity @s transformation.left_rotation set from storage 8q:display temporary.AngleY