#> lib:forward_spreader/core/fetch
#
# 汎用entityのPosに計算済みの拡散座標を代入します
#
# @within function lib:forward_spreader/core/

#> Temporary
# @private
    #declare score_holder $PosX
    #declare score_holder $PosY
    #declare score_holder $PosZ

# 汎用EntityのPosを取得
    data modify storage lib: Pos set from entity @s Pos
    execute store result score $PosX Temporary run data get storage lib: Pos[0] 10000
    execute store result score $PosY Temporary run data get storage lib: Pos[1] 10000
    execute store result score $PosZ Temporary run data get storage lib: Pos[2] 10000
# ベクトルを加算
    scoreboard players operation $PosX Temporary += $X Temporary
    scoreboard players operation $PosY Temporary += $Y Temporary
    scoreboard players operation $PosZ Temporary += $Z Temporary
# 戻す
    execute store result storage lib: Pos[0] double 0.0001 run scoreboard players get $PosX Temporary
    execute store result storage lib: Pos[1] double 0.0001 run scoreboard players get $PosY Temporary
    execute store result storage lib: Pos[2] double 0.0001 run scoreboard players get $PosZ Temporary
    data modify entity @s Pos set from storage lib: Pos
# リセット
    scoreboard players reset $PosX Temporary
    scoreboard players reset $PosY Temporary
    scoreboard players reset $PosZ Temporary
    data remove storage lib: Pos