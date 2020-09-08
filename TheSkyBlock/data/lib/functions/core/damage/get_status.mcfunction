#> lib:core/damage/get_status
#
# 計算に必要なMobの情報を取得する
#
# @within function lib:core/damage/attack

# HP
    execute store result score $Health Temporary run data get entity @s Health 10000
# 防御力
    execute if data storage lib: {Argument:{BypassArmor:0b}} store result score $defensePoints Temporary run attribute @s generic.armor get 100
    execute if data storage lib: {Argument:{BypassArmor:1b}} run scoreboard players set $defensePoints Temporary 0
# 防具強度
    execute if data storage lib: {Argument:{BypassArmor:0b}} store result score $toughness Temporary run attribute @s generic.armor_toughness get 100
    execute if data storage lib: {Argument:{BypassArmor:1b}} run scoreboard players set $toughness Temporary 0
# EPFが未設定または-1以下の時Protectionを参照
    execute store result score $EPF Temporary run data get storage lib: EPF
    execute unless score $EPF Temporary matches 0.. run function lib:core/damage/get_default_epf
# 耐性エフェクト
    execute if data storage lib: {Argument:{BypassResistance:0b}} store result score $Resistance Temporary run data get entity @s ActiveEffects[{Id:11b}].Amplifier
    execute if data storage lib: {Argument:{BypassResistance:0b}} if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $Resistance Temporary 1
    execute if data storage lib: {Argument:{BypassResistance:1b}} run scoreboard players set $Resistance Temporary 0