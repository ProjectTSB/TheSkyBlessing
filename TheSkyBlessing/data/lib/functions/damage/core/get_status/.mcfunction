#> lib:damage/core/get_status/
#
# 計算に必要なMobの情報を取得する
#
# @within function lib:damage/core/attack

# 体力
    execute if entity @s[type=!player] store result score $Health Temporary run data get entity @s AbsorptionAmount 1000
# 防御考慮
    execute if data storage lib: Argument{BypassResist:0b} run function lib:damage/core/get_status/cons_resist
# 防御貫通
    execute if data storage lib: Argument{BypassResist:1b} run function lib:damage/core/get_status/bypass_resist