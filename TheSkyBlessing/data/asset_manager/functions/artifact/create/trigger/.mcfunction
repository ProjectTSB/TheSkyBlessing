#> asset_manager:artifact/create/trigger/
#
# Trigger関連の情報をLoreに追加する
#
# @within function
#   asset_manager:artifact/create/set_lore
#   asset_manager:artifact/create/trigger/

# move
    data modify storage asset:artifact Trigger set from storage asset:artifact CopiedTriggers[0]

# 空行セパレータ
    data modify storage asset:artifact Item.tag.display.Lore append value '""'
# 0 使用方法
    function asset_manager:artifact/create/trigger/trigger
# 1? 使用条件
    execute if data storage asset:artifact Trigger.Condition run loot replace block 10000 0 10000 container.1 loot asset_manager:artifact/generate_lore/condition
# 2? 攻撃情報
    execute if data storage asset:artifact Trigger.AttackInfo run function asset_manager:artifact/create/trigger/attack_info
# 3? 必要MP
    execute if data storage asset:artifact Trigger.MPRequire run loot replace block 10000 0 10000 container.3 loot asset_manager:artifact/generate_lore/mp_require
# 4 消費MP
    loot replace block 10000 0 10000 container.4 loot asset_manager:artifact/generate_lore/mp_cost
# 5? 消費アイテム
    execute if data storage asset:artifact Trigger.CostText run loot replace block 10000 0 10000 container.5 loot asset_manager:artifact/generate_lore/cost_item
# 6? クールタイム
    execute if data storage asset:artifact Trigger.LocalCooldown run function asset_manager:artifact/create/trigger/cooltime
# 7? スペシャル☆クールタイム
    execute if data storage asset:artifact Trigger.SpecialCooldown run function asset_manager:artifact/create/trigger/special_cooltime

# Lore一括追加
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]
# リセット
    data modify block 10000 0 10000 Items set value []

# loop
    data remove storage asset:artifact Trigger
    data remove storage asset:artifact CopiedTriggers[0]
    execute if data storage asset:artifact CopiedTriggers[0] run function asset_manager:artifact/create/trigger/
