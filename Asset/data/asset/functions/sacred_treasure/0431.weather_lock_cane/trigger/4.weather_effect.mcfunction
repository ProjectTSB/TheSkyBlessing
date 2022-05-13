#> asset:sacred_treasure/0431.weather_lock_cane/trigger/4.weather_effect
#
#
#
# @within function
#       asset:sacred_treasure/0431.weather_lock_cane/trigger/3.main
#       asset:sacred_treasure/0431.weather_lock_cane/trigger/rejoin_process

# 補正値
    data modify storage api: Argument.UUID set value [I;1,1,624,6]
    data modify storage api: Argument.Amount set value 0.2
    data modify storage api: Argument.Operation set value "multiply_base"

# 各天候により属性を分離する
    execute if data storage asset:temp BZ{Weather:Sunny} run function api:player_modifier/attack/fire/add
    execute if data storage asset:temp BZ{Weather:Rain} run function api:player_modifier/attack/water/add
    execute if data storage asset:temp BZ{Weather:Thunder} run function api:player_modifier/attack/thunder/add

# タグ付与
    tag @s add BZ.Activate

    say 効果発動