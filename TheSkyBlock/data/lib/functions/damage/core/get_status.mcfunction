#> lib:damage/core/get_status
#
# 計算に必要なMobの情報を取得する
#
# @within function lib:damage/core/attack

# HP
    execute store result score $Health Temporary run data get entity @s Health 10000
# 防御力
    execute if data storage lib: Argument{BypassResist:0b} store result score $defensePoints Temporary run attribute @s generic.armor get 100
# 防具強度
    execute if data storage lib: Argument{BypassResist:0b} store result score $toughness Temporary run attribute @s generic.armor_toughness get 100
# 耐性エフェクト
    execute if data storage lib: Argument{BypassResist:0b} store result score $Resistance Temporary run data get entity @s ActiveEffects[{Id:11b}].Amplifier
    execute if data storage lib: Argument{BypassResist:0b} if data entity @s ActiveEffects[{Id:11b}] run scoreboard players add $Resistance Temporary 1
# 属性の耐性値で補正値する
    execute if data storage lib: Argument{BypassResist:0b} run function oh_my_dat:please
    execute if data storage lib: Argument{BypassResist:0b} run data modify storage lib: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense
    execute if data storage lib: Argument{BypassResist:0b} run function lib:damage/core/modify_damage
# Protectionの値の取得
    execute if data storage lib: Argument{BypassResist:0b} run function lib:damage/core/get_protection_lv
# 防御貫通の場合
    execute if data storage lib: Argument{BypassResist:1b} run scoreboard players set $defensePoints Temporary 0
    execute if data storage lib: Argument{BypassResist:1b} run scoreboard players set $toughness Temporary 0
    execute if data storage lib: Argument{BypassResist:1b} run scoreboard players set $Resistance Temporary 0
    execute if data storage lib: Argument{BypassResist:1b} run scoreboard players set $EPF Temporary 1