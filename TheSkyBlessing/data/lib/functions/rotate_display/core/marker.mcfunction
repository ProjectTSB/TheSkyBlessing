#> lib:rotate_display/core/marker
#
# 一時マーカーを利用して計算
#
# @within function lib:rotate_display/

# execute幾何学で、縦角度[-90~90]⇒横角度[-180~0]に変換して、起こす角度特定
execute rotated 90 ~ positioned 0.0 0.0 0.0 positioned ^ ^ ^1 rotated ~90 ~ positioned ^ ^1 ^ facing 0.0 ~ 0.0 run tp @s 0.0 0.0 0.0 ~ ~
execute store result storage lib: laser.transformation.left_rotation.angle float 0.000001745 run data get entity @s Rotation[0] 10000

# 起こす軸方向ベクトル特定
execute positioned 0.0 0.0 0.0 run tp @s ^1 ^ ^ ~ ~
data modify storage lib: laser.tmp_pos set from entity @s Pos
data modify storage lib: laser.transformation.left_rotation.axis[0] set from storage lib: laser.tmp_pos[0]
data modify storage lib: laser.transformation.left_rotation.axis[1] set from storage lib: laser.tmp_pos[2]

# right_rotationの角度を特定
execute store result storage lib: laser.transformation.right_rotation.angle float 0.000001745 run data get entity @s Rotation[0] 10000

# 一時マーカー削除
kill @s
