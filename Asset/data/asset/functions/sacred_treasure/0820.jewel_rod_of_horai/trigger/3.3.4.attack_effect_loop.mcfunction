#> asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.4.attack_effect_loop
#
# 攻撃エフェクトと攻撃判定発生のループ処理
#
# @within function
#   asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.main
#   asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.4.attack_effect_loop

# 攻撃エフェクトと攻撃実行
    execute as @e[type=area_effect_cloud,tag=MS.AttackPosition] at @s run function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.5.attack_effect

# スケジュール再設定
    execute if entity @e[type=area_effect_cloud,tag=MS.AttackPosition] run schedule function asset:sacred_treasure/0820.jewel_rod_of_horai/trigger/3.3.4.attack_effect_loop 1t