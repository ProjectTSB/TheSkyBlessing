#> player_manager:pos_diff
#
#
#
# @within function core:tick/player/pre

#> Val
# @private
    #declare score_holder $X
    #declare score_holder $Y
    #declare score_holder $Z

# PlayerStorage呼び出し
    function oh_my_dat:please
# 1tick前の座標を取得する
    execute store result score $X Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos[0] 100
    execute store result score $Y Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos[1] 100
    execute store result score $Z Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos[2] 100
# 現tickの座標を取得する
    function api:data_get/pos
    execute store result score @s PlayerPosDiff.X run data get storage api: Pos[0] 100
    execute store result score @s PlayerPosDiff.Y run data get storage api: Pos[1] 100
    execute store result score @s PlayerPosDiff.Z run data get storage api: Pos[2] 100
# 座標を次tickに渡す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos set from storage api: Pos
# 差分の計算
    scoreboard players operation @s PlayerPosDiff.X -= $X Temporary
    scoreboard players operation @s PlayerPosDiff.Y -= $Y Temporary
    scoreboard players operation @s PlayerPosDiff.Z -= $Z Temporary
# 止まってから20tick目に座標の補正がかかるのでそのtickに限っては無視する
    execute if score @s PlayerStopTime matches 19 run scoreboard players set @s PlayerPosDiff.X 0
    execute if score @s PlayerStopTime matches 19 run scoreboard players set @s PlayerPosDiff.Y 0
    execute if score @s PlayerStopTime matches 19 run scoreboard players set @s PlayerPosDiff.Z 0
# 止まってからの時間の管理
    scoreboard players add @s PlayerStopTime 1
    execute unless score @s PlayerPosDiff.X matches 0 run scoreboard players set @s PlayerStopTime 0
    execute unless score @s PlayerPosDiff.Y matches 0 run scoreboard players set @s PlayerStopTime 0
    execute unless score @s PlayerStopTime matches 0 run scoreboard players set @s PlayerStopTime 0
# リセット
    scoreboard players reset $X Temporary
    scoreboard players reset $Y Temporary
    scoreboard players reset $Z Temporary