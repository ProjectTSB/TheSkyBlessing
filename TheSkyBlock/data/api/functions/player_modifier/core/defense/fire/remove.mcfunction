#> api:player_modifier/core/defense/fire/remove
#
#
#
# @within function api:player_modifier/defense/fire/remove

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Fire
# 配列の初期化
    data modify storage api: NewModifiers set value []
# フィルタ
    function api:player_modifier/core/common/remove_modifier
# 削除されたデータの加工
    execute store result storage api: Removed.Amount double -0.001 run data get storage api: Removed.Amount 1000
# 新しい配列を戻す
    data modify storage api: Modifiers set from storage api: NewModifiers
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Fire set from storage api: Modifiers
# データの更新
    function api:player_modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense.Fire set from storage api: Modifier
# リセット
    data remove storage api: Modifiers
    data remove storage api: NewModifiers