#> asset_manager:artifact/use/
#
# 神器使用時の処理を実行します
#
# @within function asset_manager:artifact/triggers/*/**

#> private
# @private
    #declare score_holder $OldItems
    #declare score_holder $NewItems

# MP減少処理
    execute if data storage asset:artifact TargetItem.MPCost run function asset_manager:artifact/use/remove_mp
# 種別クールダウン保存
    execute if data storage asset:artifact TargetItem.TypeCooldown run function asset_manager:artifact/use/update_type_cooldown.m with storage asset:artifact TargetItem.TypeCooldown
# 特殊クールダウン保存
    execute if data storage asset:artifact TargetItem.SpecialCooldown store result score $ArtifactSpecialCooldown Global run data get storage asset:artifact TargetItem.SpecialCooldown
    execute if data storage asset:artifact TargetItem.SpecialCooldown store result bossbar asset:special_cooldown max run scoreboard players get $ArtifactSpecialCooldown Global
    execute if data storage asset:artifact TargetItem.SpecialCooldown run bossbar set asset:special_cooldown players @a
# 対象アイテムの要素数を拾う
    execute store result score $OldItems Temporary if data storage asset:artifact TargetItemList[]
# すべてのアイテムについて更新処理を行う
    function asset_manager:artifact/use/item/
# データを更新する
# 要素数が変わっていれば一つ以上破壊されている
    execute store result score $NewItems Temporary if data storage asset:artifact RenewedItemList[]
    data modify storage asset:artifact TargetItemList set from storage asset:artifact RenewedItemList
    execute if score $OldItems Temporary > $NewItems Temporary run data modify storage asset:context BrokeItem set value true
# リセット
    scoreboard players reset $OldItems Temporary
    scoreboard players reset $NewItems Temporary
    data remove storage asset:artifact RenewedItemList
