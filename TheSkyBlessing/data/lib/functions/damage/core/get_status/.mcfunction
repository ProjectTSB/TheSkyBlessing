#> lib:damage/core/get_status/
#
# 計算に必要なMobの情報を取得する
#
# @within function lib:damage/core/attack

# HP
    execute if entity @s[type=player] run function api:data_get/health
    execute if entity @s[type=!player] run data modify storage api: Health set from entity @s Health
    execute store result score $Health Temporary run data get storage api: Health 10000
# 防御考慮
    execute if data storage lib: Argument{BypassResist:0b} run function lib:damage/core/get_status/cons_resist
# 防御貫通
    execute if data storage lib: Argument{BypassResist:1b} run function lib:damage/core/get_status/bypass_resist