#> asset_manager:sacred_treasure/core/create/set_data
#
# storageから神器を作成します
#
# [生成イメージ](https://imgur.com/a/sBdLG4o)
# @input
#   as Data
#   storage asset:sacred_treasure
#       ID : int
#       Data : DataID
#       Name : TextComponent
#       Lore : TextComponent[]
#       RemainingCount? : int
#       Trigger : Trigger
#       MPCost : int
#       MPRequire : int
#       CostText : TextComponent
#       CanUsedGod : God[]
# @within function asset:sacred_treasure/lib/give

# そのまま入れれるやつ
    data modify storage asset:sacred_treasure Data.id set from storage asset:sacred_treasure Item
    data modify storage asset:sacred_treasure Data.tag.CustomModelData set from storage asset:sacred_treasure ID
    data modify storage asset:sacred_treasure Data.tag.TSB.rawName set from storage asset:sacred_treasure Name
    data modify storage asset:sacred_treasure Data.tag.TSB.ID set from storage asset:sacred_treasure ID
    data modify storage asset:sacred_treasure Data.tag.TSB.MPCost set from storage asset:sacred_treasure MPCost
    data modify storage asset:sacred_treasure Data.tag.TSB.MPRequire set from storage asset:sacred_treasure MPRequire
    data modify storage asset:sacred_treasure Data.tag.TSB.CanUsedGod set from storage asset:sacred_treasure CanUsedGod
    data modify storage asset:sacred_treasure Data.tag.TSB.RemainingCount set from storage asset:sacred_treasure RemainingCount
    data modify storage asset:sacred_treasure Data.tag.TSB.RemainingCountMAX set from storage asset:sacred_treasure RemainingCount
# 名前
    execute store result score $Remain Temporary run data get storage asset:sacred_treasure RemainingCount
    execute store result score $RemainMAX Temporary run data get storage asset:sacred_treasure RemainingCount
    execute if data storage asset:sacred_treasure RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/get_name/has_remain
    execute unless data storage asset:sacred_treasure RemainingCount run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/get_name/
    data modify storage asset:sacred_treasure Data.tag.display.Name set from block 10000 0 10000 Items[0].tag.display.Name
# Lore
    # 通常説明文
        function asset_manager:sacred_treasure/core/create/lore_append
    # 使い方
        execute if data storage asset:sacred_treasure {Trigger:"onClick"} run data modify storage asset:sacred_treasure Temp.Trigger set value "右クリック"
        execute if data storage asset:sacred_treasure {Trigger:"shot"} run data modify storage asset:sacred_treasure Temp.Trigger set value "発射"
        execute if data storage asset:sacred_treasure {Trigger:"itemUse"} run data modify storage asset:sacred_treasure Temp.Trigger set value "使用"
        execute if data storage asset:sacred_treasure {Trigger:"passive"} run data modify storage asset:sacred_treasure Temp.Trigger set value "パッシブ"
        execute if data storage asset:sacred_treasure {Trigger:"onAttack"} run data modify storage asset:sacred_treasure Temp.Trigger set value "攻撃"
        execute if data storage asset:sacred_treasure {Trigger:"onDamage"} run data modify storage asset:sacred_treasure Temp.Trigger set value "被ダメージ"
        execute if data storage asset:sacred_treasure {Trigger:"sneak"} run data modify storage asset:sacred_treasure Temp.Trigger set value "スニーク"
    # 使える神
        data modify storage asset:sacred_treasure Temp.CanUsedGod set value ['{"translate":"ﾌﾛ"}','{"translate":"ｳﾙ"}','{"translate":"ﾆｬ"}','{"translate":"ｳｨ"}','{"translate":"ﾙｰ"}']
        execute if data storage asset:sacred_treasure {CanUsedGod:["Flora"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[0] set value '{"translate":"ﾌﾛ","color":"green"}'
        execute if data storage asset:sacred_treasure {CanUsedGod:["Urban"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[1] set value '{"translate":"ｳﾙ","color":"green"}'
        execute if data storage asset:sacred_treasure {CanUsedGod:["Nyaptov"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[2] set value '{"translate":"ﾆｬ","color":"green"}'
        execute if data storage asset:sacred_treasure {CanUsedGod:["Wi-ki"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[3] set value '{"translate":"ｳｨ","color":"green"}'
        execute if data storage asset:sacred_treasure {CanUsedGod:["Rumor"]} run data modify storage asset:sacred_treasure Temp.CanUsedGod[4] set value '{"translate":"ﾙｰ","color":"green"}'
    # Lore生成
        execute if data storage asset:sacred_treasure CostText run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/generate_lore/has_cost-text
        execute unless data storage asset:sacred_treasure CostText run loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/generate_lore/
    # 追加
        data modify storage asset:sacred_treasure Data.tag.display.Lore append from block 10000 0 10000 Items[0].tag.display.Lore[]
# カスタムNBT
    data modify storage asset:sacred_treasure Data.tag merge from storage asset:sacred_treasure CustomNBT
# データの適用
    data modify entity @s Item merge from storage asset:sacred_treasure Data
# リセット
    data remove storage asset:sacred_treasure Data
    data remove storage asset:sacred_treasure Temp
    scoreboard players reset $Remain Temporary
    scoreboard players reset $RemainMAX Temporary