#> asset:sacred_treasure/0979.water_charm/trigger/add_modifier
#
#
#
# @within function asset:sacred_treasure/0979.water_charm/trigger/3.main

# 水攻撃
    data modify storage api: Argument.UUID set value [I;1,1,979,7]

# 個数を取得
    execute store result score $Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:979}}}]

# 水威力が5%ずつ上がる
    execute if score $Count Temporary matches 1 run data modify storage api: Argument.Amount set value 0.05

    execute if score $Count Temporary matches 2 run data modify storage api: Argument.Amount set value 0.1

    execute if score $Count Temporary matches 3 run data modify storage api: Argument.Amount set value 0.15

    execute if score $Count Temporary matches 4 run data modify storage api: Argument.Amount set value 0.2

    execute if score $Count Temporary matches 5 run data modify storage api: Argument.Amount set value 0.25

    execute if score $Count Temporary matches 6 run data modify storage api: Argument.Amount set value 0.3

    execute if score $Count Temporary matches 7 run data modify storage api: Argument.Amount set value 0.35

    execute if score $Count Temporary matches 8 run data modify storage api: Argument.Amount set value 0.4

    execute if score $Count Temporary matches 9 run data modify storage api: Argument.Amount set value 0.45

# 適用
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:player_modifier/attack/water/add

# リセット
    scoreboard players reset $Count Temporary