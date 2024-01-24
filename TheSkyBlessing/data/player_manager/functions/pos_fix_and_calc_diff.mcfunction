#> player_manager:pos_fix_and_calc_diff
#
#
#
# @within function core:tick/player/pre

#> Val
# @private
    #declare score_holder $Prv.SquaredMagnitude
    #declare score_holder $Cur.SquaredMagnitude
    #declare score_holder $Temp
    #declare storage player_manager:pos_fix

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

    data modify storage player_manager:pos_fix PosDiff set from storage lib: SubResult
# 現tickのベクトルの大きさの二乗を計算する
    data modify storage lib: Array set from storage lib: SubResult
    function lib:array/math/sqr

    data modify storage lib: Array set from storage lib: SqrResult
    function lib:array/math/sum

    execute store result score $Cur.SquaredMagnitude Temporary run data get storage lib: SumResult 100
# スコア推移
    scoreboard players reset @s[scores={PosPacketLossDetectAfterTick=2}] PosPacketLossDetectAfterTick
    scoreboard players add @s[scores={PosPacketLossDetectAfterTick=0..}] PosPacketLossDetectAfterTick 1

# 前tickの差分が十分な状態(0.05m/tick,1m/sec)でDiffが急に0になったらおそらくPosのパケロスが発生してるので、Posを前tickのPosとDiffから予測する
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players set @s PosPacketLossDetectAfterTick 0
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage lib: ArrayA set from storage api: Pos
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage lib: ArrayB set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPosDiff
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run function lib:array/math/add
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.Pos.Data set from storage lib: AddResult
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage api: Pos set from storage lib: AddResult
# パケロスが検出されていたらDiffとCurSquaredMagnitudeを古いもので上書きする(即ち、更新が発生しなくなる)
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run data modify storage player_manager:pos_fix PosDiff set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPosDiff
    execute if score $Prv.SquaredMagnitude Temporary matches 50.. if score $Cur.SquaredMagnitude Temporary matches ..15 unless score @s PosPacketLossDetectAfterTick matches 2 run scoreboard players operation $Cur.SquaredMagnitude Temporary = $Prv.SquaredMagnitude Temporary

# 止まってから20tick目に座標の補正がかかるのでそのtickに限っては無視する
    execute if score @s PlayerStopTime matches 19 run data modify storage player_manager:pos_fix PosDiff set value [0d,0d,0d]

# 止まってからの時間の管理
    scoreboard players add @s PlayerStopTime 1

    data modify storage lib: Array set from storage player_manager:pos_fix PosDiff
    data modify storage lib: CompareTarget set value 0d
    function lib:array/compare_single
    execute if data storage lib: CompareResult[{_:{_:false}}] run scoreboard players set @s PlayerStopTime 0

# 次tickにデータ渡す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPos set from storage api: Pos
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPosDiff set from storage player_manager:pos_fix PosDiff
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].PlayerPosDiffSquaredMagnitude int 1 run scoreboard players get $Cur.SquaredMagnitude Temporary
# リセット
    function lib:array/session/close
    data remove storage player_manager:pos_fix PosDiff
    scoreboard players reset $Prv.SquaredMagnitude Temporary
    scoreboard players reset $Cur.SquaredMagnitude Temporary
    scoreboard players reset $Temp Temporary