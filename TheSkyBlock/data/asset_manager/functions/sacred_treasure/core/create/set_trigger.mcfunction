#> asset_manager:sacred_treasure/core/create/set_trigger
#
# 使用の条件を設定します
#
# @within function asset_manager:sacred_treasure/core/create/set_data

execute if data storage asset:sacred_treasure {Trigger:"onClick"} run data modify storage asset:sacred_treasure Temp.Trigger set value "右クリック"
execute if data storage asset:sacred_treasure {Trigger:"shot"} run data modify storage asset:sacred_treasure Temp.Trigger set value "発射"
execute if data storage asset:sacred_treasure {Trigger:"itemUse"} run data modify storage asset:sacred_treasure Temp.Trigger set value "使用"
execute if data storage asset:sacred_treasure {Trigger:"passive"} run data modify storage asset:sacred_treasure Temp.Trigger set value "パッシブ"
execute if data storage asset:sacred_treasure {Trigger:"onAttack"} run data modify storage asset:sacred_treasure Temp.Trigger set value "攻撃"
execute if data storage asset:sacred_treasure {Trigger:"onDamage"} run data modify storage asset:sacred_treasure Temp.Trigger set value "被ダメージ"
execute if data storage asset:sacred_treasure {Trigger:"sneak"} run data modify storage asset:sacred_treasure Temp.Trigger set value "スニーク"