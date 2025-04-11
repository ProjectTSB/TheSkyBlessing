#> asset_manager:artifact/triggers/equipments/set_and_modifier/attire/unique
#
#
#
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/*

# idを一つ取り出す
    data modify storage asset:artifact Temp.Value set from storage asset:artifact Temp.Target[-1]
# upsertする
    function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/upsert.m with storage asset:artifact Temp
# リセット
    data remove storage asset:artifact Temp.Value
    data remove storage asset:artifact Temp.Target[-1]
# ループ
    execute if data storage asset:artifact Temp.Target[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/attire/unique
