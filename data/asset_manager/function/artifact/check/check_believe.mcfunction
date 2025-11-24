#> asset_manager:artifact/check/check_believe
#
# 信仰をチェックします
#
# @within function asset_manager:artifact/check/

# タグの事前付与
    tag @s add CheckFailed
# チェックに成功してたらタグを外す
    execute if data storage asset:artifact TargetItems[0].components."minecraft:custom_data".TSB{CanUsedGod:["Flora"]} if predicate player_manager:is_believe/flora run tag @s remove CheckFailed
    execute if data storage asset:artifact TargetItems[0].components."minecraft:custom_data".TSB{CanUsedGod:["Nyaptov"]} if predicate player_manager:is_believe/nyaptov run tag @s remove CheckFailed
    execute if data storage asset:artifact TargetItems[0].components."minecraft:custom_data".TSB{CanUsedGod:["Rumor"]} if predicate player_manager:is_believe/rumor run tag @s remove CheckFailed
    execute if data storage asset:artifact TargetItems[0].components."minecraft:custom_data".TSB{CanUsedGod:["Urban"]} if predicate player_manager:is_believe/urban run tag @s remove CheckFailed
    execute if data storage asset:artifact TargetItems[0].components."minecraft:custom_data".TSB{CanUsedGod:["Wi-ki"]} if predicate player_manager:is_believe/wi-ki run tag @s remove CheckFailed
