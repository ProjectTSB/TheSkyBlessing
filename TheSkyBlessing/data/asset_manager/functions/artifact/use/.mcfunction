#> asset_manager:artifact/use/
#
# 神器使用時の処理を実行します
#
# @within function asset:artifact/common/use/*

# 神器データの取得
# TODO: IgnoreItemUpdate を true にしている神器の give 処理内で ItemUpdate を無効化するように変更する
    function asset_manager:artifact/data/current/get
    execute unless data storage asset:artifact IgnoreItemUpdate run data modify storage asset:artifact IgnoreItemUpdate set from storage asset:artifact TargetItems[0].tag.TSB.DisabledFlag.Use.ItemUpdate
function metric:artifact.m with storage asset:artifact TargetItems[0].tag.TSB
# 神器処理内で利用される DamageAPI 用に MP 回復量のデータを追加する
# DamageAPI で MP 回復をするのは設計上非常に正しくなく、
# 本来は、DamageAPI 時に割り込みで呼び出された回数を記録し、
# 神器処理終了後にまとめて MPHealWhenHit * Cnt を回復するのが正しいと思われる。
# が、実装時点では神器の処理終了時に追加で処理を実行することが出来ないため、
# すべてを諦めて DamageAPI で回復を行う。
    data remove storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: PersistentArgument.AdditionalMPHeal double 0.01 run data get storage asset:artifact TargetItems[0].tag.TSB.MPHealWhenHit 100
# MP減少処理
    execute if data storage asset:artifact TargetItems[0].tag.TSB.MPCost run function asset_manager:artifact/use/remove_mp
# 種別クールダウン保存
    execute if data storage asset:artifact TargetItems[0].tag.TSB.TypeCooldown run function asset_manager:artifact/use/update_type_cooldown.m with storage asset:artifact TargetItems[0].tag.TSB.TypeCooldown
# 特殊クールダウン保存
    execute if data storage asset:artifact TargetItems[0].tag.TSB.SpecialCooldown store result score $ArtifactSpecialCooldown Global run data get storage asset:artifact TargetItems[0].tag.TSB.SpecialCooldown
    execute if data storage asset:artifact TargetItems[0].tag.TSB.SpecialCooldown store result bossbar asset:special_cooldown max run scoreboard players get $ArtifactSpecialCooldown Global
    execute if data storage asset:artifact TargetItems[0].tag.TSB.SpecialCooldown run bossbar set asset:special_cooldown players @a
# すべてのアイテムについて更新処理を行う
    execute unless data storage asset:artifact {IgnoreItemUpdate:true} run function asset_manager:artifact/use/item/
# リセット
    data remove storage asset:artifact IgnoreItemUpdate
    data remove storage asset:artifact TargetSlot
    data remove storage asset:artifact TargetDefaultSlot
    data remove storage asset:artifact TargetItems
