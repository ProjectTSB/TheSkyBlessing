#> lib:motion/core/looking/non-player
#
#
#
# @within function lib:motion/core/looking/

#> Val
# @private
    #declare score_holder $VectorX
    #declare score_holder $VectorY
    #declare score_holder $VectorZ

# 初期化として視点を自分にあわせる & ^ ^ ^1を取得
    execute in overworld positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^ ^ ^1

# 演算処理
    data modify storage lib: Pos set from entity 0-0-0-0-0 Pos
    execute store result score $VectorX Temporary run data get storage lib: Pos[0] 10
    execute store result score $VectorY Temporary run data get storage lib: Pos[1] 10
    execute store result score $VectorZ Temporary run data get storage lib: Pos[2] 10

    scoreboard players operation $VectorX Temporary *= $VectorMagnitude Temporary
    scoreboard players operation $VectorY Temporary *= $VectorMagnitude Temporary
    scoreboard players operation $VectorZ Temporary *= $VectorMagnitude Temporary

# 適用
    execute store result storage lib: Pos[0] double 0.00001 run scoreboard players get $VectorX Temporary
    execute store result storage lib: Pos[1] double 0.00001 run scoreboard players get $VectorY Temporary
    execute store result storage lib: Pos[2] double 0.00001 run scoreboard players get $VectorZ Temporary
    data modify entity @s Motion set from storage lib: Pos

# リセット
    scoreboard players reset $VectorX Temporary
    scoreboard players reset $VectorY Temporary
    scoreboard players reset $VectorZ Temporary
    data remove storage lib: Pos
