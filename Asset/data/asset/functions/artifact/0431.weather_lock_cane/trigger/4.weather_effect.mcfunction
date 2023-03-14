#> asset:artifact/0431.weather_lock_cane/trigger/4.weather_effect
#
#
#
# @within function
#       asset:artifact/0431.weather_lock_cane/trigger/3.main
#       asset:artifact/0431.weather_lock_cane/trigger/rejoin_process

# 補正値
    data modify storage api: Argument.UUID set value [I;1,1,624,6]
    data modify storage api: Argument.Amount set value 0.4
    data modify storage api: Argument.Operation set value "multiply"

# 各天候により属性補正を分岐する
    execute if data storage asset:temp BZ{Weather:Sunny} run function api:modifier/attack/fire/add
    execute if data storage asset:temp BZ{Weather:Rain} run function api:modifier/attack/water/add
    execute if data storage asset:temp BZ{Weather:Thunder} run function api:modifier/attack/thunder/add

    execute if data storage asset:temp BZ{Weather:Sunny} run tellraw @s [{"text": "火属性攻撃","color": "red"},{"text": "が40%上がった！","color": "white"}]
    execute if data storage asset:temp BZ{Weather:Rain} run tellraw @s [{"text": "水属性攻撃","color": "aqua"},{"text": "が40%上がった！","color": "white"}]
    execute if data storage asset:temp BZ{Weather:Thunder} run tellraw @s [{"text": "雷属性攻撃","color": "yellow"},{"text": "が40%上がった！","color": "white"}]

# タグ付与
    tag @s add BZ.Activate