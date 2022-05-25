#> lib:damage/core/get_status/cons_resist
#
# consider resist
#
# @within function lib:damage/core/get_status/

# 防御力
    execute store result score $defensePoints Temporary run attribute @s generic.armor get 100
# 防具強度
    execute store result score $toughness Temporary run attribute @s generic.armor_toughness get 100
# 耐性エフェクト
    execute if entity @s[type=player] run function api:data_get/active_effects
    execute if entity @s[type=!player] run data modify storage api: ActiveEffects set from entity @s ActiveEffects

    execute store result score $Resistance Temporary run data get storage api: ActiveEffects[{Id:11b}].Amplifier
    execute unless data storage api: ActiveEffects[{Id:11b}].Amplifier run scoreboard players set $Resistance Temporary -1

    execute if score $Resistance Temporary matches 127 unless data storage api: ActiveEffects[{Id:11b}].HiddenEffect run scoreboard players set $Resistance Temporary -1
    execute if score $Resistance Temporary matches 127 store result score $Resistance Temporary run data get storage api: ActiveEffects[{Id:11b}].HiddenEffect.Amplifier

    scoreboard players add $Resistance Temporary 1
# 属性の耐性値で補正値する
    function oh_my_dat:please
    data modify storage lib: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense
    function lib:damage/core/modify_damage
    execute store result score $Damage Temporary run data get storage lib: ModifiedDamage 100
# Protectionの値の取得
    function lib:damage/core/get_protection/
# リセット
    data remove storage api: ActiveEffects
    data remove storage lib: ModifiedDamage