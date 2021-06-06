#> asset_manager:sacred_treasure/core/use/remove_remain/break_item
#
# アイテムを破壊します
#
# @within function asset_manager:sacred_treasure/core/use/remove_remain/

# 音
    playsound entity.item.break player @s
# 削除
    execute if data storage asset:sacred_treasure {TargetSlot:"mainhand"} run replaceitem entity @s weapon.mainhand air
    execute if data storage asset:sacred_treasure {TargetSlot:"offhand"} run replaceitem entity @s weapon.offhand air
    execute if data storage asset:sacred_treasure {TargetSlot:"feet"} run replaceitem entity @s armor.feet air
    execute if data storage asset:sacred_treasure {TargetSlot:"legs"} run replaceitem entity @s armor.legs air
    execute if data storage asset:sacred_treasure {TargetSlot:"chest"} run replaceitem entity @s armor.chest air
    execute if data storage asset:sacred_treasure {TargetSlot:"head"} run replaceitem entity @s armor.head air