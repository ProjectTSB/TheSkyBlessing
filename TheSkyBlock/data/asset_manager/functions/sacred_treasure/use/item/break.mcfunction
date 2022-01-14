#> asset_manager:sacred_treasure/use/item/break
#
# アイテムを破壊します
#
# @within function asset_manager:sacred_treasure/use/item/has_remain

# クールダウン表示を消す
    scoreboard players set @s WeaponLogCD 0
    scoreboard players set @s WeaponLogCDMax 0
# 音
    playsound entity.item.break player @s
# 削除
    execute if data storage asset:sacred_treasure {TargetSlot:"mainhand"} run item replace entity @s weapon.mainhand with air
    execute if data storage asset:sacred_treasure {TargetSlot:"offhand"} run item replace entity @s weapon.offhand with air
    execute if data storage asset:sacred_treasure {TargetSlot:"feet"} run item replace entity @s armor.feet with air
    execute if data storage asset:sacred_treasure {TargetSlot:"legs"} run item replace entity @s armor.legs with air
    execute if data storage asset:sacred_treasure {TargetSlot:"chest"} run item replace entity @s armor.chest with air
    execute if data storage asset:sacred_treasure {TargetSlot:"head"} run item replace entity @s armor.head with air
# データ削除
    data remove storage asset:sacred_treasure Item
# current更新
    function asset_manager:sacred_treasure/data/current/update/