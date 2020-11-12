#> asset_manager:sacred_treasures/core/use/remove_remain
#
# 耐久値を減少させます
#
# @input
#   as player
#   storage asset:sacred_treasure Item : ItemData
# @within function asset_manager:sacred_treasures/core/use/

# 対象スロットの残り使用回数取得
    execute store result score $Remain Temporary run data get storage asset:sacred_treasure Item.tag.TSB.RemainingCount
# 減算
    scoreboard players remove $Remain Temporary 1
    execute store result storage asset:sacred_treasure Item.tag.TSB.RemainingCount int 1 run scoreboard players get $Remain Temporary
# 破壊処理
    execute if score $Remain Temporary matches ..0 run playsound entity.item.break player @s
    execute if score $Remain Temporary matches ..0 if data storage asset:sacred_treasure {TargetSlot:"mainhand"} run replaceitem entity @s weapon.mainhand air
    execute if score $Remain Temporary matches ..0 if data storage asset:sacred_treasure {TargetSlot:"offhand"} run replaceitem entity @s weapon.offhand air
    execute if score $Remain Temporary matches ..0 if data storage asset:sacred_treasure {TargetSlot:"feet"} run replaceitem entity @s armor.feet air
    execute if score $Remain Temporary matches ..0 if data storage asset:sacred_treasure {TargetSlot:"legs"} run replaceitem entity @s armor.legs air
    execute if score $Remain Temporary matches ..0 if data storage asset:sacred_treasure {TargetSlot:"chest"} run replaceitem entity @s armor.chest air
    execute if score $Remain Temporary matches ..0 if data storage asset:sacred_treasure {TargetSlot:"head"} run replaceitem entity @s armor.head air
# Name更新処理
    execute if score $Remain Temporary matches 1.. run data modify storage asset:sacred_treasure Name set from storage asset:sacred_treasure Item.tag.TSB.rawName
    execute if score $Remain Temporary matches 1.. run data remove storage asset:sacred_treasure Item.tag.display.Name
    execute if score $Remain Temporary matches 1.. run data remove storage asset:sacred_treasure Item.Slot
    execute if score $Remain Temporary matches 1.. store result score $RemainMAX Temporary run data get storage asset:sacred_treasure Item.tag.TSB.RemainingCountMAX
    execute if score $Remain Temporary matches 1.. run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasures/core/get_name/has_remain
    execute if score $Remain Temporary matches 1.. run data modify block 10000 0 10000 Items[0] merge from storage asset:sacred_treasure Item
# replace
    execute if score $Remain Temporary matches 1.. if data storage asset:sacred_treasure {TargetSlot:"mainhand"} run loot replace entity @s weapon.mainhand mine 10000 0 10000 debug_stick
    execute if score $Remain Temporary matches 1.. if data storage asset:sacred_treasure {TargetSlot:"offhand"} run loot replace entity @s weapon.offhand mine 10000 0 10000 debug_stick
    execute if score $Remain Temporary matches 1.. if data storage asset:sacred_treasure {TargetSlot:"feet"} run loot replace entity @s armor.feet mine 10000 0 10000 debug_stick
    execute if score $Remain Temporary matches 1.. if data storage asset:sacred_treasure {TargetSlot:"legs"} run loot replace entity @s armor.legs mine 10000 0 10000 debug_stick
    execute if score $Remain Temporary matches 1.. if data storage asset:sacred_treasure {TargetSlot:"chest"} run loot replace entity @s armor.chest mine 10000 0 10000 debug_stick
    execute if score $Remain Temporary matches 1.. if data storage asset:sacred_treasure {TargetSlot:"head"} run loot replace entity @s armor.head mine 10000 0 10000 debug_stick
# リセット
    scoreboard players reset $Remain Temporary
    scoreboard players reset $RemainMAX Temporary