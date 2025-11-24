#> asset_manager:artifact/check/check_second_type_cooldown/foreach
#
#
#
# @within function
#   asset_manager:artifact/check/check_second_type_cooldown/
#   asset_manager:artifact/check/check_second_type_cooldown/foreach

#> Private
# @within function
#   asset_manager:artifact/check/check_second_type_cooldown/foreach
#   asset_manager:artifact/check/check_second_type_cooldown/check_duration.m
#declare score_holder $Duration

# その神器に該当する種別クールダウンの現在値を取得する
    scoreboard players set $Duration Temporary -15
    execute if data storage asset:artifact CopiedItem[-1].components."minecraft:custom_data".TSB.SecondaryTypeCooldown store result score $Duration Temporary run function asset_manager:artifact/check/check_second_type_cooldown/get_duration.m with storage asset:artifact CopiedItem[-1].components."minecraft:custom_data".TSB.SecondaryTypeCooldown
# クールダウンが終わっていなければタグを付与する
    execute if score $Duration Temporary matches 1.. run tag @s add CheckFailed

# 末尾削除
    data remove storage asset:artifact CopiedItem[-1]
# リセット
    scoreboard players reset $Duration Temporary
# 要素がまだあるなら再帰
    execute if data storage asset:artifact CopiedItem[0] run function asset_manager:artifact/check/check_second_type_cooldown/foreach
