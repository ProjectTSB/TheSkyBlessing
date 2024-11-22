#> asset_manager:artifact/create/trigger/
#
# Trigger関連の情報をLoreに追加する
#
# @within function
#   asset_manager:artifact/create/set_lore
#   asset_manager:artifact/create/trigger/

# 空行セパレータ
    execute if data storage asset:artifact Item.tag.display.Lore[0] run data modify storage asset:artifact Item.tag.display.Lore append value '""'
# 0 使用方法
    function asset_manager:artifact/create/trigger/trigger
# 1? 使用条件
    execute if data storage asset:artifact Condition run loot replace block 10000 0 10000 container.1 loot asset_manager:artifact/generate_lore/condition
# 2? 攻撃情報
    execute if data storage asset:artifact AttackInfo run function asset_manager:artifact/create/trigger/attack_info
# 3? 必要MP
    execute if data storage asset:artifact MPRequire run loot replace block 10000 0 10000 container.3 loot asset_manager:artifact/generate_lore/mp_require
# 4? 消費MP
    execute if data storage asset:artifact MPCost run loot replace block 10000 0 10000 container.4 loot asset_manager:artifact/generate_lore/mp_cost
# 5? ヒット時MP回復
    execute if data storage asset:artifact MPHealWhenHit run loot replace block 10000 0 10000 container.5 loot asset_manager:artifact/generate_lore/mp_heal_when_hit
# 6? 消費アイテム
    execute if data storage asset:artifact CostText run loot replace block 10000 0 10000 container.6 loot asset_manager:artifact/generate_lore/cost_item
# 7? クールタイム
    function asset_manager:artifact/create/trigger/cooldown/

# Lore一括追加
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]
# リセット
    data modify block 10000 0 10000 Items set value []
