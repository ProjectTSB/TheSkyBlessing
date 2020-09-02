#> entity_manager:lib/core/get_status
#
# 計算に必要なMobの情報を取得する
#
# @within function entity_manager:lib/core/attack

# HP
    execute store result score $Health Temporary run data get entity @s Health 10000
# 防御力
    execute if score $BypassArmor Temporary matches 0 store result score $defensePoints Temporary run attribute @s generic.armor get 100
    execute if score $BypassArmor Temporary matches 1 run scoreboard players set $defensePoints Temporary 0
# 防具強度
    execute if score $BypassArmor Temporary matches 0 store result score $toughness Temporary run attribute @s generic.armor_toughness get 100
    execute if score $BypassArmor Temporary matches 1 run scoreboard players set $toughness Temporary 0
# EPFが未設定または-1以下の時Protectionを参照
    execute unless score $EPF Temporary matches 0.. run function entity_manager:lib/core/get_default_epf
# 耐性エフェクト
    execute if score $BypassResistance Temporary matches 0 store result score $Resistance Temporary run data get entity @s ActiveEffects[{Id:11b}].Amplifier
    execute if score $BypassResistance Temporary matches 0 run scoreboard players add $Resistance Temporary 1
    execute if score $BypassResistance Temporary matches 1 run scoreboard players set $Resistance Temporary 0