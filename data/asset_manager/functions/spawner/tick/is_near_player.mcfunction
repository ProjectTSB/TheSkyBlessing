#> asset_manager:spawner/tick/is_near_player
#
# プレイヤーが$RequiredPlayerRangeより近くに居るかチェックする
#
# @within function asset_manager:spawner/tick/

#> temp
# @private
    #declare score_holder $SpawnerX
    #declare score_holder $SpawnerY
    #declare score_holder $SpawnerZ
    #declare score_holder $PlayerX
    #declare score_holder $PlayerY
    #declare score_holder $PlayerZ
    #declare score_holder $SquaredDistance

# プレイヤーの座標データ取得
    function api:data_get/pos
    execute store result score $PlayerX Temporary run data get storage api: Pos[0] 10
    execute store result score $PlayerY Temporary run data get storage api: Pos[1] 10
    execute store result score $PlayerZ Temporary run data get storage api: Pos[2] 10
# スポナーの座標データ取得
    execute as @e[type=item_display,tag=this,distance=..0.01] run function oh_my_dat:please
    execute store result score $SpawnerX Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.Pos[0] 10
    execute store result score $SpawnerY Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.Pos[1] 10
    execute store result score $SpawnerZ Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.Pos[2] 10
# ユークリッド距離の二乗を計算する
    scoreboard players operation $PlayerX Temporary -= $SpawnerX Temporary
    scoreboard players operation $PlayerY Temporary -= $SpawnerY Temporary
    scoreboard players operation $PlayerZ Temporary -= $SpawnerZ Temporary
    scoreboard players operation $PlayerX Temporary *= $PlayerX Temporary
    scoreboard players operation $PlayerY Temporary *= $PlayerY Temporary
    scoreboard players operation $PlayerZ Temporary *= $PlayerZ Temporary
    scoreboard players operation $SquaredDistance Temporary = $PlayerX Temporary
    scoreboard players operation $SquaredDistance Temporary += $PlayerY Temporary
    scoreboard players operation $SquaredDistance Temporary += $PlayerZ Temporary
# プレイヤーにセット
    execute if score $SquaredDistance Temporary <= $RequiredPlayerRange Temporary run tag @e[type=item_display,tag=this,distance=..0.01] add Success
# リセット
    scoreboard players reset $SpawnerX Temporary
    scoreboard players reset $SpawnerY Temporary
    scoreboard players reset $SpawnerZ Temporary
    scoreboard players reset $PlayerX Temporary
    scoreboard players reset $PlayerY Temporary
    scoreboard players reset $PlayerZ Temporary
    scoreboard players reset $SquaredDistance Temporary
