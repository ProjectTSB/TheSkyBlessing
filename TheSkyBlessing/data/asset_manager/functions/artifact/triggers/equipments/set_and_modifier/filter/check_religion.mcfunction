#> asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_religion
#
#
#
# @within function
#   asset_manager:artifact/triggers/equipments/set_and_modifier/filter/
#   asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_religion

# 末尾を抽出
    data modify storage asset:artifact Temp.Item set from storage asset:artifact Temp.Items[-1]
# 条件チェック
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Flora"]} if predicate player_manager:is_believe/flora run data modify storage asset:artifact Temp.CheckBelieve set value true
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Nyaptov"]} if predicate player_manager:is_believe/nyaptov run data modify storage asset:artifact Temp.CheckBelieve set value true
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Rumor"]} if predicate player_manager:is_believe/rumor run data modify storage asset:artifact Temp.CheckBelieve set value true
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Urban"]} if predicate player_manager:is_believe/urban run data modify storage asset:artifact Temp.CheckBelieve set value true
    execute if data storage asset:artifact Temp.Item{CanUsedGod:["Wi-ki"]} if predicate player_manager:is_believe/wi-ki run data modify storage asset:artifact Temp.CheckBelieve set value true
# asset:artifact Temp.BelieveFilteredItems の末尾に追加
    execute if data storage asset:artifact Temp{CheckBelieve:true} run data modify storage asset:artifact Temp.BelieveFilteredItems append from storage asset:artifact Temp.Item
    execute unless data storage asset:artifact Temp{CheckBelieve:true} run data modify storage asset:artifact Temp.BelieveFilteredItems append value {ID:-2}
# リセット
    data remove storage asset:artifact Temp.CheckBelieve
    data remove storage asset:artifact Temp.Items[-1]
    data remove storage asset:artifact Temp.Item
# ループ
    execute if data storage asset:artifact Temp.Items[0] run function asset_manager:artifact/triggers/equipments/set_and_modifier/filter/check_religion
