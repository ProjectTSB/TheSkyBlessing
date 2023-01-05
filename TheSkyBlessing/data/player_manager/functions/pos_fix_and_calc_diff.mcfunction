#> player_manager:pos_fix_and_calc_diff
#
#
#
# @within function core:tick/player/pre

#> Val
# @private
    #declare score_holder $Prv.Pos.X
    #declare score_holder $Prv.Pos.Y
    #declare score_holder $Prv.Pos.Z
    #declare score_holder $Prv.SquaredMagnitude
    #declare score_holder $Cur.Pos.X
    #declare score_holder $Cur.Pos.Y
    #declare score_holder $Cur.Pos.Z
    #declare score_holder $Cur.SquaredMagnitude
    #declare score_holder $Cur.Diff.X
    #declare score_holder $Cur.Diff.Y
    #declare score_holder $Cur.Diff.Z
    #declare score_holder $Temp

# PlayerStorage呼び出し
    function oh_my_dat:please
# 1tick前の座標とベクトルの大きさの二乗を取得する
    execute store result score $Prv.Pos.X Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos[0] 100
    execute store result score $Prv.Pos.Y Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos[1] 100
    execute store result score $Prv.Pos.Z Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos[2] 100
    execute store result score $Prv.SquaredMagnitude Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPosDiffSquaredMagnitude
# 現tickの座標を取得する
    function api:data_get/pos
    execute store result score $Cur.Pos.X Temporary store result score $Cur.Diff.X Temporary run data get storage api: Pos[0] 100
    execute store result score $Cur.Pos.Y Temporary store result score $Cur.Diff.Y Temporary run data get storage api: Pos[1] 100
    execute store result score $Cur.Pos.Z Temporary store result score $Cur.Diff.Z Temporary run data get storage api: Pos[2] 100
# 現tickの差分を計算する
    scoreboard players operation $Cur.Diff.X Temporary -= $Prv.Pos.X Temporary
    scoreboard players operation $Cur.Diff.Y Temporary -= $Prv.Pos.Y Temporary
    scoreboard players operation $Cur.Diff.Z Temporary -= $Prv.Pos.Z Temporary
# 現tickのベクトルの大きさの二乗を計算する
    scoreboard players operation $Cur.SquaredMagnitude Temporary = $Cur.Diff.X Temporary
    scoreboard players operation $Cur.SquaredMagnitude Temporary *= $Cur.Diff.X Temporary

    scoreboard players operation $Temp Temporary = $Cur.Diff.Y Temporary
    scoreboard players operation $Temp Temporary *= $Cur.Diff.Y Temporary
    scoreboard players operation $Cur.SquaredMagnitude Temporary += $Temp Temporary

    scoreboard players operation $Temp Temporary = $Cur.Diff.Z Temporary
    scoreboard players operation $Temp Temporary *= $Cur.Diff.Z Temporary
    scoreboard players operation $Cur.SquaredMagnitude Temporary += $Temp Temporary
# 前tickの差分が十分な状態でDiffが急に0になったらおそらくPosのパケロスが発生してるので、PosとDiffに前tickものを採用する
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players set @s PosPacketLossDetectAfterTick 0
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Pos.X Temporary += @s PlayerPosDiff.X
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Pos.Y Temporary += @s PlayerPosDiff.Y
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Pos.Z Temporary += @s PlayerPosDiff.Z

    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Diff.X Temporary = @s PlayerPosDiff.X
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Diff.Y Temporary = @s PlayerPosDiff.Y
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Diff.Z Temporary = @s PlayerPosDiff.Z
# Posの修正を行う
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 store result storage api: Pos[0] double 0.01 run scoreboard players get $Cur.Pos.X Temporary
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 store result storage api: Pos[1] double 0.01 run scoreboard players get $Cur.Pos.Y Temporary
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 store result storage api: Pos[2] double 0.01 run scoreboard players get $Cur.Pos.Z Temporary
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Data set from storage api: Pos
# CurSquaredMagnitudeも前tickものを採用する
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.SquaredMagnitude Temporary = $Prv.SquaredMagnitude Temporary
# タグ付け替え
    scoreboard players reset @s[scores={PosPacketLossDetectAfterTick=2}] PosPacketLossDetectAfterTick
    scoreboard players add @s[scores={PosPacketLossDetectAfterTick=0..}] PosPacketLossDetectAfterTick 1
# 計算途中で算出されたDiffを次のDiffとして扱う
    scoreboard players operation @s PlayerPosDiff.X = $Cur.Diff.X Temporary
    scoreboard players operation @s PlayerPosDiff.Y = $Cur.Diff.Y Temporary
    scoreboard players operation @s PlayerPosDiff.Z = $Cur.Diff.Z Temporary
# 止まってから20tick目に座標の補正がかかるのでそのtickに限っては無視する
    execute if score @s PlayerStopTime matches 19 run scoreboard players set @s PlayerPosDiff.X 0
    execute if score @s PlayerStopTime matches 19 run scoreboard players set @s PlayerPosDiff.Y 0
    execute if score @s PlayerStopTime matches 19 run scoreboard players set @s PlayerPosDiff.Z 0
# 止まってからの時間の管理
    scoreboard players add @s PlayerStopTime 1
    execute unless score @s PlayerPosDiff.X matches 0 run scoreboard players set @s PlayerStopTime 0
    execute unless score @s PlayerPosDiff.Y matches 0 run scoreboard players set @s PlayerStopTime 0
    execute unless score @s PlayerPosDiff.Z matches 0 run scoreboard players set @s PlayerStopTime 0
# 次tickにデータ渡す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos set from storage api: Pos
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPosDiffSquaredMagnitude int 1 run scoreboard players get $Cur.SquaredMagnitude Temporary
# リセット
    scoreboard players reset $Prv.Pos.X Temporary
    scoreboard players reset $Prv.Pos.Y Temporary
    scoreboard players reset $Prv.Pos.Z Temporary
    scoreboard players reset $Prv.SquaredMagnitude Temporary
    scoreboard players reset $Cur.Pos.X Temporary
    scoreboard players reset $Cur.Pos.Y Temporary
    scoreboard players reset $Cur.Pos.Z Temporary
    scoreboard players reset $Cur.SquaredMagnitude Temporary
    scoreboard players reset $Cur.Diff.X Temporary
    scoreboard players reset $Cur.Diff.Y Temporary
    scoreboard players reset $Cur.Diff.Z Temporary
    scoreboard players reset $Temp Temporary