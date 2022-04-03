#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/0.load
#
# 神器に利用するスコアボード等の初期化処理
#
# @within tag/function asset:sacred_treasure/load

#> 定義類はここに
# @within function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/**
# 攻撃対象のUUID
    scoreboard objectives add MS.TargetUUID dummy
# かぐや姫装備の装備数に応じた攻撃レベル
    scoreboard objectives add MS.AttackLevel dummy
# 攻撃実行者のID
    scoreboard objectives add MS.OwnerID dummy