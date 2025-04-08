#> asset_manager:container/register/construct/common/calculate_count_for_multiplayer
#
#
#
# @within function
#   asset_manager:container/register/construct/set_items/item_normalize/from_preset
#   asset_manager:container/register/construct/set_loot_table/manipulate_item_count

#> Private
# @private
    #declare score_holder $Count
    #declare score_holder $MultiplayMultiplier
    #declare score_holder $FinalMultiplier
    #declare score_holder $Random

# 計算
    execute if score $PlayerCount Global matches 1 run scoreboard players set $MultiplayMultiplier Temporary 100
    execute if score $PlayerCount Global matches 2 run scoreboard players set $MultiplayMultiplier Temporary 160
    execute if score $PlayerCount Global matches 3 run scoreboard players set $MultiplayMultiplier Temporary 210
    execute if score $PlayerCount Global matches 4 run scoreboard players set $MultiplayMultiplier Temporary 250
    execute if score $PlayerCount Global matches 5.. run scoreboard players set $MultiplayMultiplier Temporary 30
    execute if score $PlayerCount Global matches 5.. run scoreboard players operation $MultiplayMultiplier Temporary *= $PlayerCount Global
    execute if score $PlayerCount Global matches 5.. run scoreboard players add $MultiplayMultiplier Temporary 130

# 100% を超えている分はそのまま最終倍率に入れる
    scoreboard players operation $FinalMultiplier Temporary = $MultiplayMultiplier Temporary
    scoreboard players operation $FinalMultiplier Temporary /= $100 Const
# 100% を超えていない分はその確率で最終倍率を増やす
    scoreboard players operation $MultiplayMultiplier Temporary %= $100 Const
    execute store result score $Random Temporary run random value 0..99
    execute if score $Random Temporary < $MultiplayMultiplier Temporary run scoreboard players add $FinalMultiplier Temporary 1

# 倍率適用
    execute store result score $Count Temporary run data get storage asset:container Count
    scoreboard players operation $Count Temporary *= $FinalMultiplier Temporary
    execute store result storage asset:container Count int 1 run scoreboard players get $Count Temporary
# リセット
    scoreboard players reset $Count Temporary
    scoreboard players reset $MultiplayMultiplier Temporary
    scoreboard players reset $FinalMultiplier Temporary
    scoreboard players reset $Random Temporary
