#> lib:forward_spreader/core/pitch
#
# 実行方向のpitchからsin/cosを取得します
#
# @within function lib:forward_spreader/core/

# 汎用Entityを原点にTP
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 0.0 0.0
# pitchを代入しベクトルをnormalize
    execute store result entity 0-0-0-0-0 Rotation[0] float 1 run data get storage lib: Rotation[1]
    execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^1
# pitchのsin/cosを取得
    data modify storage lib: Pos set from entity 0-0-0-0-0 Pos
    execute store result score $PitchSin Temporary run data get storage lib: Pos[0] -10000
    execute store result score $PitchCos Temporary run data get storage lib: Pos[2] 10000
# リセット
    data remove storage lib: Pos