#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.3.set_attack_position
#
# ターゲットのUUIDをAECにセットし攻撃発生地点に移動
# @input
#   MS.TargetUUID Temporary 攻撃対象のUUID
#
# @within function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.main

# AECを移動
    execute anchored eyes positioned ^ ^ ^2 run tp @e[type=area_effect_cloud,tag=MS.AttackPosition,tag=!Friend,distance=..13] ~ ~ ~

# AECにターゲットのUUID代入
    scoreboard players operation @e[type=area_effect_cloud,tag=MS.AttackPosition,tag=!Friend,distance=..4] MS.TargetUUID = $MS.TargetUUID Temporary
