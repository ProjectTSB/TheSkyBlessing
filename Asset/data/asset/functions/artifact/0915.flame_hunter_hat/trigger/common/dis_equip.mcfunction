#> asset:artifact/0915.flame_hunter_hat/trigger/common/dis_equip
#
# 装備外した時の共通処理
#
# @within function
#   asset:artifact/0915.flame_hunter_hat/trigger/dis_equip/main
#   asset:artifact/0916.flame_hunter_clothes/trigger/dis_equip/main
#   asset:artifact/0917.flame_hunter_clothes/trigger/dis_equip/main
#   asset:artifact/0918.flame_hunter_boots/trigger/dis_equip/main

# 2部位の補正を削除
    execute if entity @s[scores={PF.ArmorCount=2}] run function asset:artifact/0915.flame_hunter_hat/trigger/common/dis_equip_2parts

# 4部位の補正を削除
    execute if entity @s[scores={PF.ArmorCount=4}] run function asset:artifact/0915.flame_hunter_hat/trigger/common/dis_equip_4parts

# 装備数スコアを減らす
    scoreboard players remove @s PF.ArmorCount 1
    execute if entity @s[scores={PF.ArmorCount=..0}] run scoreboard players reset @s PF.ArmorCount