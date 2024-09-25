#> api:modifier/core/defense/water/remove
#
#
#
# @within function api:modifier/defense/water/remove

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Water
# 配列の初期化
    data modify storage api: NewModifiers set value []
    data remove storage api: Removed
# フィルタ
    function api:modifier/core/common/remove_modifier
# 削除されたデータの加工
    execute store result storage api: Removed.Amount double -0.001 run data get storage api: Removed.Amount 1000
# 新しい配列を戻す
    data modify storage api: Modifiers set from storage api: NewModifiers
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Water set from storage api: Modifiers
# データの更新
    data modify storage api: Base set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Base.Defense.Water
    function api:modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense.Water set from storage api: Modifier
# リセット
    data remove storage api: Base
    data remove storage api: Modifiers
    data remove storage api: NewModifiers
