#> asset:sacred_treasure/0980.thunder_charm/trigger/add_modifier
#
#
#
# @within function asset:sacred_treasure/0980.thunder_charm/trigger/**main

# UUID設定
    data modify storage api: Argument.UUID set value [I;1,1,980,7]

# リセット
    function api:player_modifier/attack/thunder/remove

# 個数を取得し、個数×0.5%を補正とする
    execute store result storage api: Argument.Amount double 0.05 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:980}}}]

# UUID設定
    data modify storage api: Argument.UUID set value [I;1,1,980,7]

# 適用
    data modify storage api: Argument.Operation set value "multiply_base"
    execute unless data storage api: Argument{Amount:0.0d} run function api:player_modifier/attack/thunder/add

# リセット
    data remove storage api: Argument