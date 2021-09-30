#> asset_manager:sacred_treasure/data/set_old
#
# EntityStorageからcontextにつっこむ
#
# @within function asset_manager:sacred_treasure/triggers/

# 初期化
    data remove storage asset:context Old
# EntityStorage呼び出し
    function oh_my_dat:please
# 突っ込む
    data modify storage asset:context Old.Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Inventory
    data modify storage asset:context Old.Items set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.Items
    data modify storage asset:context Old.id set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash.id
# EntityStorageから削除
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ContextStash