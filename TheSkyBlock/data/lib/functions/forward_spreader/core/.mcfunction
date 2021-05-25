#> lib:forward_spreader/core/
#
#
#
# @within function lib:forward_spreader/*
tellraw @a [{"text":"-------------------------"}]
# 実行座標に汎用EntityをTP
    tp 0-0-0-0-0 ~ ~ ~ ~ ~
# 必要な実行座標のデータを取得
# N/A => Rotation[], ($Distance, $Diameter)
    execute store result score $Distance Temporary run data get storage lib: Argument.Distance 10000
    execute store result score $Diameter Temporary run data get storage lib: Argument.Spread 10000
    data modify storage lib: Rotation set from entity 0-0-0-0-0 Rotation
# 実行座標のデータからベクトルを取得する
# Rotation[] => ($YawSin, $YawCos, $PitchSin, $PitchCos)
    function lib:forward_spreader/core/yaw
    function lib:forward_spreader/core/pitch
# 処理の下準備
# ($Distance, $Diameter) => ($Radius, $Radius^2)
    function lib:forward_spreader/core/pre_randomizer
# 拡散範囲に収まるランダムなベクトルを生成する
# ($Diameter, $Radius, $Radius^2, $Distance) => ($VecX, $VecY, $VecZ)
    function lib:forward_spreader/core/randomizer
    scoreboard players operation $VecZ Temporary = $Distance Temporary
# 計算
# ($YawSin, $YawCos, $PitchSin, $PitchCos, $VecX, $VecY, $VecX) => ($X, $Y, $Z)
    function lib:forward_spreader/core/calc
# 適用
    function lib:forward_spreader/core/fetch
# リセット
    data remove storage lib: Argument
    data remove storage lib: Rotation