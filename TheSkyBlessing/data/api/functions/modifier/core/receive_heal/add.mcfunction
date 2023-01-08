#> api:modifier/core/receive_heal/add
#
#
#
# @within function api:modifier/receive_heal/add

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.ReceiveHeal[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.ReceiveHeal set value []
# 追加する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.ReceiveHeal append value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.ReceiveHeal[-1].UUID set from storage api: Argument.UUID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.ReceiveHeal[-1].Amount set from storage api: Argument.Amount
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.ReceiveHeal[-1].Operation set from storage api: Argument.Operation
# データの更新
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.ReceiveHeal
    function api:modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.ReceiveHeal set from storage api: Modifier
# リセット
    data remove storage api: Modifiers
    data remove storage api: Modifier