#> api:modifier/core/fall_damage/remove
#
#
#
# @within function api:modifier/fall_damage/remove

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Modifier.FallDamage
# 配列の初期化
    data modify storage api: NewModifiers set value []
    data remove storage api: Removed
# フィルタ
    function api:modifier/core/common/remove_modifier
# 削除されたデータの加工
    execute store result storage api: Removed.Amount double -0.001 run data get storage api: Removed.Amount 1000
# 新しい配列を戻す
    data modify storage api: Modifiers set from storage api: NewModifiers
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Modifier.FallDamage set from storage api: Modifiers
# データの更新
    data modify storage api: Base set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Default.FallDamage
    function api:modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Attributes.Value.FallDamage set from storage api: Modifier
# リセット
    data remove storage api: Base
    data remove storage api: Modifiers
    data remove storage api: NewModifiers
