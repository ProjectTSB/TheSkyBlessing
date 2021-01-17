#> asset_manager:sacred_treasure/core/create/set_trigger
#
# 使用の条件を設定します
#
# @within function asset_manager:sacred_treasure/core/create/set_lore

# スロット
    execute if data storage asset:sacred_treasure {Slot:"auto"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "どちらかの手に持ち"
    execute if data storage asset:sacred_treasure {Slot:"mainhand"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "メインハンドに持ち"
    execute if data storage asset:sacred_treasure {Slot:"offhand"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "オフハンドに持ち"
    execute if data storage asset:sacred_treasure {Slot:"head"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "装備し"
    execute if data storage asset:sacred_treasure {Slot:"chest"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "装備し"
    execute if data storage asset:sacred_treasure {Slot:"legs"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "装備し"
    execute if data storage asset:sacred_treasure {Slot:"feet"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "装備し"
    execute if data storage asset:sacred_treasure {Slot:"inventory"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "インベントリ内に保持し"
    execute if data storage asset:sacred_treasure {Slot:"hotbar"} run data modify storage asset:sacred_treasure Temp.Trigger.A set value "ホットバーに保持し"
# トリガー
    execute if data storage asset:sacred_treasure {Trigger:"onClick"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "右クリック"
    execute if data storage asset:sacred_treasure {Trigger:"shot"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "発射"
    execute if data storage asset:sacred_treasure {Trigger:"itemUse"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "使用"
    execute if data storage asset:sacred_treasure {Trigger:"passive"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "パッシブ"
    execute if data storage asset:sacred_treasure {Trigger:"onAttack"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "攻撃"
    execute if data storage asset:sacred_treasure {Trigger:"onDamage"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "被ダメージ"
    execute if data storage asset:sacred_treasure {Trigger:"sneak"} run data modify storage asset:sacred_treasure Temp.Trigger.B set value "スニーク"
# 生成
    loot replace block 10000 0 10000 container.0 loot asset_manager:sacred_treasure/core/generate_lore/trigger