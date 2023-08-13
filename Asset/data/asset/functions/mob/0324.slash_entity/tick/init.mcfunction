#> asset:mob/0324.slash_entity/tick/init
#
# 本当は召喚処理で済ませたいが、Tickからじゃないと個人ストレージが取得できない
#
# @within function asset:mob/0324.slash_entity/tick/

# 向き
    execute facing entity @e[type=marker,tag=90.FacingMarker,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# マーカーキル
    kill @e[type=marker,tag=90.FacingMarker,sort=nearest,limit=1]

# サイズを決める
    data modify entity @s transformation.scale[0] set from storage asset:context this.Scale
    data modify entity @s transformation.scale[1] set from storage asset:context this.Scale
    data modify entity @s transformation.scale[2] set from storage asset:context this.Scale

# 明るさ決める
    execute if data storage asset:context this.Brightness run data modify entity @s brightness.block set from storage asset:context this.Brightness
# 未設定ならデータ削除
    execute unless data storage asset:context this.Brightness run data remove entity @s brightness

# 角度を決める
    data modify storage 90.storage: Rotation set value {axis:[0f,0f,1f],angle:0}
    execute store result storage 90.storage: Rotation.angle float 0.01745 run data get storage asset:context this.Rotation
    data modify entity @s transformation.left_rotation set from storage 90.storage: Rotation
    data remove storage 90.storage: Rotation

# Init完了
    tag @s add 90.Init