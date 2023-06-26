#> asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.3.set_attack_data
#
# ターゲットのUUIDをAECにセットし攻撃発生地点に移動
# @input
#   as @p[tag=this]
#   MS.TargetUUID Temporary 攻撃対象のUUID
#
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/3.main

#> prv
# @private
    #declare score_holder $MS.EquipNumber

# AECを攻撃発生地点に移動
    execute anchored eyes positioned ^ ^ ^2 run tp @e[type=area_effect_cloud,tag=MS.AttackPosition,tag=MS.Init,distance=..13] ~ ~ ~ ~ ~

# AECにターゲットのUUID代入
    scoreboard players operation @e[type=area_effect_cloud,tag=MS.AttackPosition,tag=MS.Init,distance=..4] MS.TargetUUID = $MS.TargetUUID Temporary

# AECに実行者のUUID代入
    scoreboard players operation @e[type=area_effect_cloud,tag=MS.AttackPosition,tag=MS.Init,distance=..4] MS.OwnerID = @s UserID

# 装備状況確認
    scoreboard players set $MS.EquipNumber Temporary 0
    function api:data_get/inventory
    execute if data storage api: Inventory[{Slot:100b}].tag.TSB{ID:819} run scoreboard players add $MS.EquipNumber Temporary 1
    execute if data storage api: Inventory[{Slot:101b}].tag.TSB{ID:818} run scoreboard players add $MS.EquipNumber Temporary 1
    execute if data storage api: Inventory[{Slot:102b}].tag.TSB{ID:816} run scoreboard players add $MS.EquipNumber Temporary 1
    execute if data storage api: Inventory[{Slot:103b}].tag.TSB{ID:817} run scoreboard players add $MS.EquipNumber Temporary 1

# AECに攻撃レベル代入
    scoreboard players operation @e[type=area_effect_cloud,tag=MS.AttackPosition,tag=MS.Init,distance=..4] MS.AttackLevel = $MS.EquipNumber Temporary

# reset
    scoreboard players reset $MS.EquipNumber Temporary