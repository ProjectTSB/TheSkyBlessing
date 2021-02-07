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
    execute if data storage asset:sacre_treasure MPRequire run loot replace block 10000 0 10000 container.2 loot asset_manager:sacred_treasure/core/generate_lore/mp_require
# 3 消費MP
    loot replace block 10000 0 10000 container.3 loot asset_manager:sacred_treasure/core/generate_lore/mp_cost
# 4? 消費アイテム
    execute if data storage asset:sacred_treasure CostText run loot replace block 10000 0 10000 container.4 loot asset_manager:sacred_treasure/core/generate_lore/cost_item
# 5? スペシャル☆クールタイムを秒数に変換
    execute store result score $Bob Temporary run data get storage asset:sacred_treasure SpecialCooldown
    scoreboard players operation $Bob Temporary /= $20 Const
# 5? スペシャル☆クールタイムの小数第一位まで求める
    execute store result score $John Temporary run data get storage asset:sacred_treasure SpecialCooldown
    scoreboard players operation $John Temporary %= $20 Const
    scoreboard players operation $John Temporary *= $5 Const
# 5?ストレージに入れる
    execute store result storage asset:sacred_treasure SpecialCooldown int 1 run scoreboard players get $Bob Temporary
    execute store result storage asset:sacred_treasure SpecialCooldownDecimal int 1 run scoreboard players get $John Temporary
# 5? スペシャル☆クールタイム
    execute if data storage asset:sacred_treasure SpecialCooldown run loot replace block 10000 0 10000 container.5 loot asset_manager:sacred_treasure/core/generate_lore/special_cooldown
# 6 使える神
    function asset_manager:sacred_treasure/core/create/set_god
# Lore一括追加
    data modify storage asset:sacred_treasure Data.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]
# リセット
    data modify block 10000 0 10000 Items set value []
    scoreboard players reset $Bob
    scoreboard players reset $John