#> lib:damage/core/get_status
#
# 計算に必要なMobの情報を取得する
#
# @within function lib:damage/core/attack

# HP
    execute store result score $Health Temporary run data get entity @s Health 10000
# 防御力
    execute if data storage lib: {Argument:{BypassArmor:0b}} store result score $defensePoints Temporary run attribute @s generic.armor get 100
    execute if data storage lib: {Argument:{BypassArmor:1b}} run scoreboard players set $defensePoints Temporary 0
# 防具強度
    execute if data storage lib: {Argument:{BypassArmor:0b}} store result score $toughness Temporary run attribute @s generic.armor_toughness get 100
    execute if data storage lib: {Argument:{BypassArmor:1b}} run scoreboard players set $toughness Temporary 0
# 属性の耐性値を取得
    function lib:damage/core/get_epf
# 耐性エフェクト
    execute if data storage lib: {Argument:{BypassResistance:0b}} store result score $Resistance Temporary run data get entity @s ActiveEffects[{Id:11b}].Amplifier
    execute if data storage lib: {Argument:{BypassResistance:0b}} if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $Resistance Temporary 1
    execute if data storage lib: {Argument:{BypassResistance:1b}} run scoreboard players set $Resistance Temporary 0