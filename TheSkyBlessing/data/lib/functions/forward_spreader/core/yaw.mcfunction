#> lib:forward_spreader/core/yaw
#
# 実行方向のyawからsin/cosを取得します
#
# @within function lib:forward_spreader/core/

# 汎用Entityを原点にTP
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 0.0 0.0
# yawを代入しベクトルをnormalize
    execute store result entity 0-0-0-0-0 Rotation[0] float 1 run data get storage lib: Rotation[0]
    execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^1
# yawのsin/cosを取得
    data modify storage lib: Pos set from entity 0-0-0-0-0 Pos
    execute store result score $YawSin Temporary run data get storage lib: Pos[0] 10000
    execute store result score $YawCos Temporary run data get storage lib: Pos[2] 10000
# リセット
    data remove storage lib: Pos