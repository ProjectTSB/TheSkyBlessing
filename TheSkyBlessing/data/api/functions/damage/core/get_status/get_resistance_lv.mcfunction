#> api:damage/core/get_status/get_resistance_lv
#
#
#
# @within function api:damage/core/get_status/

# 念のためactive_effectsを削除
    data remove storage api: active_effects
# active_effectsの取得
    execute if entity @s[type=player] run function api:data_get/active_effects
    execute if entity @s[type=!player] run data modify storage api: active_effects set from entity @s active_effects
# 耐性lv(0-indexed)の取得
    execute store result score $Resistance Temporary run data get storage api: active_effects[{id:"minecraft:resistance"}].amplifier
    execute unless data storage api: active_effects[{id:"minecraft:resistance"}].amplifier run scoreboard players set $Resistance Temporary -1
# 127lv(0-indexed)の場合、lib:damageの演出用に付与されているものなので、HiddenEffectを再度参照する
    execute if score $Resistance Temporary matches 127 unless data storage api: active_effects[{id:"minecraft:resistance"}].hidden_effect run scoreboard players set $Resistance Temporary -1
    execute if score $Resistance Temporary matches 127 store result score $Resistance Temporary run data get storage api: active_effects[{id:"minecraft:resistance"}].hidden_effect.amplifier
# 0-indexed -> 1-indexed
    scoreboard players add $Resistance Temporary 1
# リセット
    data remove storage api: active_effects
