#> world_manager:chunk_io_protect/check_move
#
#
#
# @within function world_manager:chunk_io_protect/

#> Val
# @private
    #declare score_holder $X e1
    #declare score_holder $Y e1
    #declare score_holder $Z e1
    #declare score_holder $SquaredDistance e2

# プレイヤーのベクトルを取得する
    function api:player_vector/get
    execute store result score $X Temporary run data get storage api: Return.Vector[0] 10
    execute store result score $Y Temporary run data get storage api: Return.Vector[1] 10
    execute store result score $Z Temporary run data get storage api: Return.Vector[2] 10
# 各成分を二乗する e1 -> e2
    scoreboard players operation $X Temporary *= $X Temporary
    scoreboard players operation $Y Temporary *= $Y Temporary
    scoreboard players operation $Z Temporary *= $Z Temporary
# 距離の二乗を計算する
    scoreboard players operation $SquaredDistance Temporary = $X Temporary
    scoreboard players operation $SquaredDistance Temporary += $Y Temporary
    scoreboard players operation $SquaredDistance Temporary += $Z Temporary
# 約4.5m/t(90m/s)以上で動いている場合はタグを付与する (4.5^2 ≒ 2000 (e2))
    execute if score $SquaredDistance Temporary > $2000 Const run tag @s add IsNeedsUpdate
# リセット
    scoreboard players reset $X Temporary
    scoreboard players reset $Y Temporary
    scoreboard players reset $Z Temporary
    scoreboard players reset $SquaredDistance Temporary