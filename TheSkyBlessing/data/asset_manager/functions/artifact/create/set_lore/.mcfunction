#> asset_manager:artifact/create/set_lore/
#
# Loreを構成します
#
# @within function asset_manager:artifact/create/set_data

# 初期化
    data modify block 10000 0 10000 Items set value []
# 通常説明文
    function asset_manager:artifact/create/set_lore/vanilla_lore
# 空行セパレータ
    data modify storage asset:artifact Item.tag.display.Lore append value '""'
# 0 使用方法
    function asset_manager:artifact/create/set_lore/0.trigger
# 1? 使用条件
    execute if data storage asset:artifact Condition run loot replace block 10000 0 10000 container.1 loot asset_manager:artifact/generate_lore/1.condition
# 2? 攻撃情報
    execute if data storage asset:artifact AttackInfo run function asset_manager:artifact/create/set_lore/2.attack_info
# 3? 必要MP
    execute if data storage asset:artifact MPRequire run loot replace block 10000 0 10000 container.3 loot asset_manager:artifact/generate_lore/3.mp_require
# 4? 消費MP
    execute if data storage asset:artifact MPCost run loot replace block 10000 0 10000 container.4 loot asset_manager:artifact/generate_lore/4.mp_cost
# 5? ヒット時MP回復
    execute if data storage asset:artifact MPHealWhenHit run loot replace block 10000 0 10000 container.5 loot asset_manager:artifact/generate_lore/5.mp_heal_when_hit
# 6? 消費アイテム
    execute if data storage asset:artifact ConsumeItem run function asset_manager:artifact/create/set_lore/6.consume_item
# 7? クールダウン
    function asset_manager:artifact/create/set_lore/7.cooldown/
# 8 使える神
    function asset_manager:artifact/create/set_lore/8.god
# Lore一括追加
    data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]
# リセット
    data modify block 10000 0 10000 Items set value []
