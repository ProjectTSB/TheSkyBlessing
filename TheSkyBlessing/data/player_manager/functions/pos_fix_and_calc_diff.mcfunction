#> player_manager:pos_fix_and_calc_diff
#
#
#
# @within function core:tick/player/pre

#> Val
# @private
    #declare score_holder $Prv.SquaredMagnitude
    #declare score_holder $Cur.SquaredMagnitude
    #declare score_holder $Cur.Diff.X
    #declare score_holder $Cur.Diff.Y
    #declare score_holder $Cur.Diff.Z
    #declare score_holder $Temp

# 現tickの座標を取得する (PlayerStorage呼び出しも含む)
    function api:data_get/pos
    # function oh_my_dat:please
# 1tick前のベクトルの大きさの二乗を取得する
    execute store result score $Prv.SquaredMagnitude Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPosDiffSquaredMagnitude

# セッションを開く
    function lib:array/session/open
# 現tickの差分を計算する
    data modify storage lib: ArrayA set from storage api: Pos
    data modify storage lib: ArrayB set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos
    function lib:array/math/sub

    execute store result score $Cur.Diff.X Temporary run data get storage lib: SubResult[0] 100
    execute store result score $Cur.Diff.Y Temporary run data get storage lib: SubResult[1] 100
    execute store result score $Cur.Diff.Z Temporary run data get storage lib: SubResult[2] 100
# 現tickのベクトルの大きさの二乗を計算する
    data modify storage lib: Array set from storage lib: SubResult
    function lib:array/math/sqr

    data modify storage lib: Array set from storage lib: SqrResult
    function lib:array/math/sum

    execute store result score $Cur.SquaredMagnitude Temporary run data get storage lib: SumResult

# スコア推移
    scoreboard players reset @s[scores={PosPacketLossDetectAfterTick=2}] PosPacketLossDetectAfterTick
    scoreboard players add @s[scores={PosPacketLossDetectAfterTick=0..}] PosPacketLossDetectAfterTick 1

# 前tickの差分が十分な状態(0.05m/tick,1m/sec)でDiffが急に0になったらおそらくPosのパケロスが発生してるので、Posを前tickのPosとDiffから予測する
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players set @s PosPacketLossDetectAfterTick 0
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage lib: ArrayA set from storage api: Pos
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage lib: ArrayB set value [-0.0625d,-0.0625d,-0.0625d]
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 store result storage lib: ArrayB[0] double 0.01 run scoreboard players get @s PlayerPosDiff.X
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 store result storage lib: ArrayB[1] double 0.01 run scoreboard players get @s PlayerPosDiff.Y
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 store result storage lib: ArrayB[2] double 0.01 run scoreboard players get @s PlayerPosDiff.Z
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run function lib:array/math/add
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Data set from storage lib: AddResult
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run function api:data_get/pos
# パケロスが検出されていたらDiffとCurSquaredMagnitudeを古いもので上書きする(即ち、更新が発生しなくなる)
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Diff.X Temporary = @s PlayerPosDiff.X
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Diff.Y Temporary = @s PlayerPosDiff.Y
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.Diff.Z Temporary = @s PlayerPosDiff.Z
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.SquaredMagnitude Temporary = $Prv.SquaredMagnitude Temporary

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
    scoreboard players operation @s PlayerPosDiff.X = $Cur.Diff.X Temporary
    scoreboard players operation @s PlayerPosDiff.Y = $Cur.Diff.Y Temporary
    scoreboard players operation @s PlayerPosDiff.Z = $Cur.Diff.Z Temporary
# リセット
    function lib:array/session/close
    scoreboard players reset $Prv.SquaredMagnitude Temporary
    scoreboard players reset $Cur.SquaredMagnitude Temporary
    scoreboard players reset $Cur.Diff.X Temporary
    scoreboard players reset $Cur.Diff.Y Temporary
    scoreboard players reset $Cur.Diff.Z Temporary
    scoreboard players reset $Temp Temporary