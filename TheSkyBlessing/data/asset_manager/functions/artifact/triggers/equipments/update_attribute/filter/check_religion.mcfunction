#> asset_manager:artifact/triggers/equipments/update_attribute/filter/check_religion
#
#
#
# @within function
#   asset_manager:artifact/triggers/equipments/update_attribute/filter/
#   asset_manager:artifact/triggers/equipments/update_attribute/filter/check_religion

#> private
# @private
    #declare score_holder $CheckBelieve

# 末尾を抽出
    data modify storage asset:artifact Temp.2 set from storage asset:artifact Temp.1[-1]
# 条件チェック
    execute if data storage asset:artifact Temp.2{CanUsedGod:["Flora"]} if predicate player_manager:is_believe/flora run scoreboard players set $CheckBelieve Temporary 1
    execute if data storage asset:artifact Temp.2{CanUsedGod:["Nyaptov"]} if predicate player_manager:is_believe/nyaptov run scoreboard players set $CheckBelieve Temporary 1
    execute if data storage asset:artifact Temp.2{CanUsedGod:["Rumor"]} if predicate player_manager:is_believe/rumor run scoreboard players set $CheckBelieve Temporary 1
    execute if data storage asset:artifact Temp.2{CanUsedGod:["Urban"]} if predicate player_manager:is_believe/urban run scoreboard players set $CheckBelieve Temporary 1
    execute if data storage asset:artifact Temp.2{CanUsedGod:["Wi-ki"]} if predicate player_manager:is_believe/wi-ki run scoreboard players set $CheckBelieve Temporary 1
# asset:artifact Temp.3 の末尾に追加
    execute if score $CheckBelieve Temporary matches 1 run data modify storage asset:artifact Temp.3 append from storage asset:artifact Temp.2
    execute unless score $CheckBelieve Temporary matches 1 run data modify storage asset:artifact Temp.3 append value {ID:-2,UUID:-2,LocalCooldown:0}
# リセット
    scoreboard players reset $CheckBelieve Temporary
    data remove storage asset:artifact Temp.1[-1]
    data remove storage asset:artifact Temp.2
# ループ
    execute if data storage asset:artifact Temp.1[0] run function asset_manager:artifact/triggers/equipments/update_attribute/filter/check_religion
