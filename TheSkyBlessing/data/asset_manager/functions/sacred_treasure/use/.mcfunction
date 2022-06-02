#> asset_manager:sacred_treasure/use/
#
# 神器使用時の処理を実行します
#
# @within function asset:sacred_treasure/common/use/*

# 神器データの取得
    function asset_manager:sacred_treasure/data/current/get
# MP減少処理
    function asset_manager:sacred_treasure/use/remove_mp
# 特殊クールダウン保存
    execute if data storage asset:sacred_treasure TargetItems[0].tag.TSB.SpecialCooldown store result score $SacredTreasureSpecialCooldown Global run data get storage asset:sacred_treasure TargetItems[0].tag.TSB.SpecialCooldown
    execute if data storage asset:sacred_treasure TargetItems[0].tag.TSB.SpecialCooldown store result bossbar asset:special_cooldown max run scoreboard players get $SacredTreasureSpecialCooldown Global
    execute if data storage asset:sacred_treasure TargetItems[0].tag.TSB.SpecialCooldown run bossbar set asset:special_cooldown players @a
# すべてのアイテムについて更新処理を行う
    execute unless data storage asset:sacred_treasure {IgnoreItemUpdate:true} run function asset_manager:sacred_treasure/use/item/
# リセット
    data remove storage asset:sacred_treasure IgnoreUpdate
    data remove storage asset:sacred_treasure TargetSlot
    data remove storage asset:sacred_treasure TargetDefaultSlot
    data remove storage asset:sacred_treasure TargetItems