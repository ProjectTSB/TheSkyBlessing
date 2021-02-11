#> lib:motion/core/apply
#
# Motionに関するメイン処理を行います
#
# @within function lib:motion/

#> private
# @private
    #declare score_holder $VectorMagnitude
    #declare score_holder $VectorX
    #declare score_holder $VectorY
    #declare score_holder $VectorZ

# 初期化として視点を自分にあわせる & ^ ^ ^0.01を取得
    execute positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^0.01

# 演算処理
    data modify storage lib: Pos set from entity 0-0-0-0-0 Pos
    execute store result score $VectorX Temporary run data get storage lib: Pos[0] 1000
    execute store result score $VectorY Temporary run data get storage lib: Pos[1] 1000
    execute store result score $VectorZ Temporary run data get storage lib: Pos[2] 1000

    scoreboard players operation $VectorX Temporary *= $VectorMagnitude Lib
    scoreboard players operation $VectorY Temporary *= $VectorMagnitude Lib
    scoreboard players operation $VectorZ Temporary *= $VectorMagnitude Lib

# 適用
    execute store result storage lib: Pos[0] double 0.001 run scoreboard players get $VectorX Temporary
    execute store result storage lib: Pos[1] double 0.001 run scoreboard players get $VectorY Temporary
    execute store result storage lib: Pos[2] double 0.001 run scoreboard players get $VectorZ Temporary
    data modify entity @s Motion set from storage lib: Pos

# 次Entityに備えたtp
    tp 0-0-0-0-0 0.0 0.0 0.0

# リセット 複数Entityが利用する可能性がある都合上$VectorMagnitudeは1tick遅らせる
    scoreboard players reset $VectorX Temporary
    scoreboard players reset $VectorY Temporary
    scoreboard players reset $VectorZ Temporary
    data remove storage lib: Pos
    schedule function lib:motion/core/reset 1t