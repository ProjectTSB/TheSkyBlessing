#> asset_manager:sacred_treasure/core/create/set_lore
#
# Loreを構成します
#
# @within function asset_manager:sacred_treasure/core/create/set_data


# 通常説明文
    function asset_manager:sacred_treasure/core/create/lore_append
# 空行セパレータ
    data modify storage asset:sacred_treasure Data.tag.display.Lore append value '""'
# 0 使用方法
    function asset_manager:sacred_treasure/core/create/set_trigger
# 1? 使用条件
    execute if data storage asset:sacred_treasure Condition run loot replace block 10000 0 10000 container.1 loot asset_manager:sacred_treasure/core/generate_lore/condition
# 2? 必要MP
    execute if data storage asset:sacred_treasure MPRequire run loot replace block 10000 0 10000 container.2 loot asset_manager:sacred_treasure/core/generate_lore/mp_require
# 3 消費MP
    loot replace block 10000 0 10000 container.3 loot asset_manager:sacred_treasure/core/generate_lore/mp_cost
# 4? 消費アイテム
    execute if data storage asset:sacred_treasure CostText run loot replace block 10000 0 10000 container.4 loot asset_manager:sacred_treasure/core/generate_lore/cost_item
# 5? スペシャル☆クールタイム
    execute if data storage asset:sacred_treasure LocalCooldown run function asset_manager:sacred_treasure/core/create/convert_cooltime
    execute if data storage asset:sacred_treasure LocalCooldown run loot replace block 10000 0 10000 container.5 loot asset_manager:sacred_treasure/core/generate_lore/cooldown
# 6? スペシャル☆クールタイム
    execute if data storage asset:sacred_treasure SpecialCooldown run function asset_manager:sacred_treasure/core/create/convert_special_cooltime
    execute if data storage asset:sacred_treasure SpecialCooldown run loot replace block 10000 0 10000 container.6 loot asset_manager:sacred_treasure/core/generate_lore/special_cooldown
# 7 使える神
    function asset_manager:sacred_treasure/core/create/set_god
# Lore一括追加
    data modify storage asset:sacred_treasure Data.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]
# リセット
    data modify block 10000 0 10000 Items set value []
