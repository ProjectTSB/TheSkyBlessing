#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/auto

# ここから先は神器側の効果の処理を書く
# ターゲットのUUID取得
    function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.2.set_target

# ターゲットのUUIDをAECにセットし攻撃発生地点に移動
    function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.3.set_attack_position

# 音
    playsound ogg:ambient.nether.warped_forest.here1 master @a ~ ~ ~ 1 2 1

# 攻撃発生までのscheduleループ実行
    schedule function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.4.attack_loop 1t

# reset
    scoreboard players reset $MS.TargetUUID Temporary