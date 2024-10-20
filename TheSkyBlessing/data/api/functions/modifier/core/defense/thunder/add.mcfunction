#> api:modifier/core/defense/thunder/add
#
#
#
# @within function api:modifier/defense/thunder/add

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Modifier.Defense.Thunder[0] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Modifier.Defense.Thunder set value []
# 同じUUIDのModifierを削除する
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Modifier.Defense.Thunder
    data modify storage api: NewModifiers set value []
    data remove storage api: Removed
    function api:modifier/core/common/remove_modifier
    data modify storage api: Modifiers set from storage api: NewModifiers
# 新しいModifierを追加する
    data modify storage api: Modifiers append value {}
    data modify storage api: Modifiers[-1].UUID set from storage api: Argument.UUID
    execute store result storage api: Modifiers[-1].Amount double -0.001 run data get storage api: Argument.Amount 1000
    data modify storage api: Modifiers[-1].Operation set from storage api: Argument.Operation
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Modifier.Defense.Thunder set from storage api: Modifiers
# データを更新
    data modify storage api: Base set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Default.Defense.Thunder
    function api:modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.Defense.Thunder set from storage api: Modifier
# リセット
    data remove storage api: Base
    data remove storage api: Modifiers
    data remove storage api: Modifier
    data remove storage api: NewModifiers
