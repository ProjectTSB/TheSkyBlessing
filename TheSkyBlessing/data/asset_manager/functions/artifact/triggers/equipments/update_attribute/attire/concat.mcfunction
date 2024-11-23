#> asset_manager:artifact/triggers/equipments/update_attribute/attire/concat
#
#
#
# @within function asset_manager:artifact/triggers/equipments/update_attribute/attire/*

# idを一つ取り出す
    data modify storage asset:artifact Attire.Value set from storage asset:artifact Attire.Target[-1]
# upsertする
    function asset_manager:artifact/triggers/equipments/update_attribute/attire/upsert.m with storage asset:artifact Attire
# 要素を削除して、残っているならば再帰
    data remove storage asset:artifact Attire.Value
    data remove storage asset:artifact Attire.Target[-1]
    execute if data storage asset:artifact Attire.Target[0] run function asset_manager:artifact/triggers/equipments/update_attribute/attire/concat
