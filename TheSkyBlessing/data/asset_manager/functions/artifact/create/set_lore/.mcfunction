#> asset_manager:artifact/create/set_lore/
#
# Loreを構成します
#
# @within function asset_manager:artifact/create/set_data

# 初期化
    data modify block 10000 0 10000 Items set value []
# 通常説明文
    execute if data storage asset:artifact Lore[0] run function asset_manager:artifact/create/set_lore/vanilla_lore
# 装備時効果
    # ステータス補正
        data modify storage asset:artifact CopiedModifiers set from storage asset:artifact Equipment.Modifiers
        execute if data storage asset:artifact CopiedModifiers[0] if data storage asset:artifact Item.tag.display.Lore[0] run data modify storage asset:artifact Item.tag.display.Lore append value '""'
        execute if data storage asset:artifact CopiedModifiers[0] run function asset_manager:artifact/create/set_lore/modifier/
        data remove storage asset:artifact CopiedModifiers
    # セット効果
        execute if data storage asset:artifact Equipment.Effects[{Visible:true}] if data storage asset:artifact Item.tag.display.Lore[0] run data modify storage asset:artifact Item.tag.display.Lore append value '""'
        execute if data storage asset:artifact Equipment.Effects[0] run function asset_manager:artifact/create/set_lore/equipment/
    # リセット
        data modify block 10000 0 10000 Items set value []
# 空行セパレータ
    execute if data storage asset:artifact Item.tag.display.Lore[0] run data modify storage asset:artifact Item.tag.display.Lore append value '""'
# トリガー
    # 使用方法
        function asset_manager:artifact/create/set_lore/trigger
    # 使用条件
        execute if data storage asset:artifact Condition run loot replace block 10000 0 10000 container.1 loot asset_manager:artifact/generate_lore/condition
    # 攻撃情報
        execute if data storage asset:artifact AttackInfo run function asset_manager:artifact/create/set_lore/attack_info
    # 必要MP
        execute if data storage asset:artifact MPRequire run loot replace block 10000 0 10000 container.3 loot asset_manager:artifact/generate_lore/mp_require
    # 消費MP
        execute if data storage asset:artifact MPCost run loot replace block 10000 0 10000 container.4 loot asset_manager:artifact/generate_lore/mp_cost
    # ヒット時MP回復
        execute if data storage asset:artifact MPHealWhenHit run function asset_manager:artifact/create/set_lore/mp_heal_when_hit/
    # 消費アイテム
        execute if data storage asset:artifact ConsumeItem run function asset_manager:artifact/create/set_lore/consume_item
    # クールタイム
        function asset_manager:artifact/create/set_lore/cooldown/
    # Lore一括追加
        data modify storage asset:artifact Item.tag.display.Lore append from block 10000 0 10000 Items[].tag.display.Lore[]
    # リセット
        data modify block 10000 0 10000 Items set value []
# 空行セパレータ
    execute if data storage asset:artifact Item.tag.display.Lore[0] run data modify storage asset:artifact Item.tag.display.Lore append value '""'
# 最大装備数
    execute if data storage asset:artifact {Slot:"hotbar"} run function asset_manager:artifact/create/set_lore/parts_max
# 使える神
    function asset_manager:artifact/create/set_lore/god
