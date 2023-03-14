#> asset:artifact/0915.flame_hunter_hat/trigger/common/equip
#
# 装備したときの共通処理
#
# @within function
#   asset:artifact/0915.flame_hunter_hat/trigger/3.main
#   asset:artifact/0916.flame_hunter_clothes/trigger/3.main
#   asset:artifact/0917.flame_hunter_clothes/trigger/3.main
#   asset:artifact/0918.flame_hunter_boots/trigger/3.main

# 装備数スコア
    scoreboard players add @s PF.ArmorCount 1

# スコアが2なら2部位の補正
    execute if entity @s[scores={PF.ArmorCount=2}] run function asset:artifact/0915.flame_hunter_hat/trigger/common/equip_2parts

# スコアが4なら4部位の補正
    execute if entity @s[scores={PF.ArmorCount=4}] run function asset:artifact/0915.flame_hunter_hat/trigger/common/equip_4parts