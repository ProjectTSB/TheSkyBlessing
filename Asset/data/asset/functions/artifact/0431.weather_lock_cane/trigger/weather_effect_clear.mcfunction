#> asset:artifact/0431.weather_lock_cane/trigger/weather_effect_clear
#
#
#
# @within function
#      asset:artifact/0431.weather_lock_cane/trigger/end
#      asset:artifact/0431.weather_lock_cane/trigger/rejoin_process

# 補正値
    data modify storage api: Argument.UUID set value [I;1,1,624,6]
# 各天候により属性を分離する
    execute if data storage asset:temp BZ{Weather:Sunny} run function api:modifier/attack/fire/remove
    execute if data storage asset:temp BZ{Weather:Rain} run function api:modifier/attack/water/remove
    execute if data storage asset:temp BZ{Weather:Thunder} run function api:modifier/attack/thunder/remove

    tag @s remove BZ.Activate