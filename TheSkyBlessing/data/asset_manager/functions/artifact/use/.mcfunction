#> asset_manager:artifact/use/
#
# 神器使用時の処理を実行します
#
# @within function asset_manager:artifact/triggers/*/**

#> private
# @private
    #declare score_holder $OldItems
    #declare score_holder $NewItems

# 神器処理内で利用される DamageAPI 用に MP 回復量のデータを追加する
# DamageAPI で MP 回復をするのは設計上非常に正しくなく、
# 本来は、DamageAPI 時に割り込みで呼び出された回数を記録し、
# 神器処理終了後にまとめて MPHealWhenHit * Cnt を回復するのが正しいと思われる。
# が、実装時点では神器の処理終了時に追加で処理を実行することが出来ないため、
# すべてを諦めて DamageAPI で回復を行う。
    data remove storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: PersistentArgument.AdditionalMPHeal double 0.01 run data get storage asset:artifact TargetItems[0].tag.TSB.MPHealWhenHit 100
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
    execute unless data storage asset:artifact TargetItem{IgnoreItemUpdate:true} run function asset_manager:artifact/use/item/
# データを更新する
# 要素数が変わっていれば一つ以上破壊されている
    execute store result score $NewItems Temporary if data storage asset:artifact RenewedItemList[]
    data modify storage asset:artifact TargetItemList set from storage asset:artifact RenewedItemList
    execute if score $OldItems Temporary > $NewItems Temporary run data modify storage asset:context BrokeItem set value true
# リセット
    scoreboard players reset $OldItems Temporary
    scoreboard players reset $NewItems Temporary
    data remove storage asset:artifact RenewedItemList
