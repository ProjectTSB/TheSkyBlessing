#> asset:artifact/0978.fire_charm/trigger/add_modifier
#
#
#
# @within function asset:artifact/0978.fire_charm/trigger/**main

# UUID設定
    data modify storage api: Argument.UUID set value [I;1,1,978,7]

# リセット
    function api:modifier/attack/fire/remove

# 個数を取得し、個数×0.5%を補正とする
    execute store result storage api: Argument.Amount double 0.05 if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:978}}}]

# UUID設定
    data modify storage api: Argument.UUID set value [I;1,1,978,7]

# 適用
    data modify storage api: Argument.Operation set value "multiply_base"
    execute unless data storage api: Argument{Amount:0.0d} run function api:modifier/attack/fire/add

# リセット
    data remove storage api: Argument