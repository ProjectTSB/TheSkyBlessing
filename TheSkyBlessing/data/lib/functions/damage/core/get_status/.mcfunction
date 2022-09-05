#> lib:damage/core/get_status/
#
# 計算に必要なMobの情報を取得する
#
# @within function lib:damage/core/attack

# 体力
    execute if entity @s[type=!player] store result score $Health Temporary run data get entity @s AbsorptionAmount 1000
# ダメージ
    execute if data storage lib: Argument{BypassModifier:false} run function lib:damage/core/get_status/modify_and_get_damage
    execute if data storage lib: Argument{BypassModifier: true} store result score $Damage Temporary run data get storage lib: Argument.Damage 100
# 防御力
    execute if data storage lib: Argument{BypassArmorDefense:false} store result score $defensePoints Temporary run attribute @s generic.armor get 100
    execute if data storage lib: Argument{BypassArmorDefense: true} run scoreboard players set $defensePoints Temporary 0
# 防具強度
    execute if data storage lib: Argument{BypassToughness:false} store result score $toughness Temporary run attribute @s generic.armor_toughness get 100
    execute if data storage lib: Argument{BypassToughness: true} run scoreboard players set $toughness Temporary 0
# エンチャント値の取得
    execute if data storage lib: Argument{BypassEnchantments:false} run function lib:damage/core/get_epf/
    execute if data storage lib: Argument{BypassEnchantments: true} run scoreboard players set $EPF Temporary 0
# 耐性エフェクト
    execute if data storage lib: Argument{BypassResistance:false} run function lib:damage/core/get_status/get_resistance_lv
    execute if data storage lib: Argument{BypassResistance: true} run scoreboard players set $Resistance Temporary 0