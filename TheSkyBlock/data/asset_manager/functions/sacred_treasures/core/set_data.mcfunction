#> asset_manager:sacred_treasures/core/set_data
#
# アイテムに神器データを適用します
#
# @within function asset:sacred_treasure/lib/give

# そのまま入れれるやつ
    data modify entity @s Item.id set from storage asset:sacred_treasure Item
    data modify entity @s Item.tag.CustomModelData set from storage asset:sacred_treasure ID
    data modify entity @s Item.tag.TSB.Name set from storage asset:sacred_treasure Name
    data modify entity @s Item.tag.TSB.ID set from storage asset:sacred_treasure ID
    data modify entity @s Item.tag.TSB.MPCost set from storage asset:sacred_treasure MPCost
    execute if data storage asset:sacred_treasure MPRequire run data modify entity @s Item.tag.TSB.MPRequire set from storage asset:sacred_treasure MPRequire
    execute unless data storage asset:sacred_treasure MPRequire run data modify entity @s Item.tag.TSB.MPRequire set from storage asset:sacred_treasure MPCost
    data modify entity @s Item.tag.TSB.CanUsedGod set from storage asset:sacred_treasure CanUsedGod
    execute if data storage asset:sacred_treasure RemainingCount run data modify entity @s Item.tag.TSB.RemainingCount set from storage asset:sacred_treasure RemainingCount
    execute if data storage asset:sacred_treasure RemainingCount run data modify entity @s Item.tag.TSB.RemainingCountMAX set from storage asset:sacred_treasure RemainingCount
# 名前
    execute store result score #Remain Temporary run data get storage asset:sacred_treasure RemainingCount
    execute store result score #RemainMAX Temporary run data get storage asset:sacred_treasure RemainingCount
    execute if data storage asset:sacred_treasure RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasures/core/get_name/has_remain
    execute unless data storage asset:sacred_treasure RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasures/core/get_name/
    data modify entity @s Item.tag.display.Name set from block 10000 0 10000 Items[0].tag.display.Name
# Lore
    # 通常説明文
        function asset_manager:sacred_treasures/core/lore_append
    # 使い方
        execute if data storage asset:sacred_treasure {Trigger:"onClick"} run data modify storage asset:sacred_treasure trigger set value "右クリック"
        execute if data storage asset:sacred_treasure {Trigger:"shot"} run data modify storage asset:sacred_treasure trigger set value "発射"
        execute if data storage asset:sacred_treasure {Trigger:"itemUse"} run data modify storage asset:sacred_treasure trigger set value "使用"
        execute if data storage asset:sacred_treasure {Trigger:"passive"} run data modify storage asset:sacred_treasure trigger set value "パッシブ"
        execute if data storage asset:sacred_treasure {Trigger:"onAttack"} run data modify storage asset:sacred_treasure trigger set value "攻撃"
        execute if data storage asset:sacred_treasure {Trigger:"onDamage"} run data modify storage asset:sacred_treasure trigger set value "被ダメージ"
        execute if data storage asset:sacred_treasure {Trigger:"sneak"} run data modify storage asset:sacred_treasure trigger set value "スニーク"
    # 使える神
        data modify storage asset:sacred_treasure sys.used set value ['{"translate":"ﾌﾛ"}','{"translate":"ｳﾙ"}','{"translate":"ﾆｬ"}','{"translate":"ｳｨ"}','{"translate":"ﾙｰ"}']
        execute if data storage asset:sacred_treasure {CanUsedGod:["Flora"]} run data modify storage asset:sacred_treasure sys.used[0] set value '{"translate":"ﾌﾛ","color":"green"}'
        execute if data storage asset:sacred_treasure {CanUsedGod:["Urban"]} run data modify storage asset:sacred_treasure sys.used[1] set value '{"translate":"ｳﾙ","color":"green"}'
        execute if data storage asset:sacred_treasure {CanUsedGod:["Nyaptov"]} run data modify storage asset:sacred_treasure sys.used[2] set value '{"translate":"ﾆｬ","color":"green"}'
        execute if data storage asset:sacred_treasure {CanUsedGod:["Wi-ki"]} run data modify storage asset:sacred_treasure sys.used[3] set value '{"translate":"ｳｨ","color":"green"}'
        execute if data storage asset:sacred_treasure {CanUsedGod:["Rumor"]} run data modify storage asset:sacred_treasure sys.used[4] set value '{"translate":"ﾙｰ","color":"green"}'
    # Lore生成
        execute if data storage asset:sacred_treasure CostText run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasures/core/generate_lore/has_cost-text
        execute unless data storage asset:sacred_treasure CostText run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasures/core/generate_lore/
    # 追加
        data modify entity @s Item.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[]