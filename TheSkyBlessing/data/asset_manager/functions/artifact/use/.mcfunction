#> asset_manager:artifact/use/
#
# 神器使用時の処理を実行します
#
# @within function asset:artifact/common/use/*

# 神器データの取得
    function asset_manager:artifact/data/current/get
# MP減少処理
    function asset_manager:artifact/use/remove_mp
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