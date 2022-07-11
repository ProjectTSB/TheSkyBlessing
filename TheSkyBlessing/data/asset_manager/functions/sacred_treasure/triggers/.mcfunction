#> asset_manager:sacred_treasure/triggers/
#
# 各トリガーに処理受け渡し
#
# @within function asset_manager:sacred_treasure/tick/player

# 神器のリログ対策用トリガー呼び出し
    execute if entity @s[tag=TriggerFlag.Rejoin] run function #asset:rejoin
# IDの代入
    function asset_manager:sacred_treasure/data/old/init
    function asset_manager:sacred_treasure/data/new/init
# 装備の変更チェック
    execute if data storage asset:context Old run function asset_manager:sacred_treasure/triggers/equipments/compare
# 変更時の更新処理
    execute if data storage asset:sacred_treasure {EquipmentChanges:[{_:{_:false}}]} run function asset_manager:sacred_treasure/triggers/equipments/update_cooldown/
# 各トリガーに処理受け渡し & AutoSlotのリセット
    function asset_manager:sacred_treasure/triggers/tick
    execute if entity @s[tag=TriggerFlag.ClickCarrot] run function asset_manager:sacred_treasure/triggers/click.carrot
    execute if entity @s[tag=TriggerFlag.Killed] run function asset_manager:sacred_treasure/triggers/killed
    execute if entity @s[tag=TriggerFlag.UseItem] run function asset_manager:sacred_treasure/triggers/use_item/
    execute if entity @s[tag=TriggerFlag.Sneak] run function asset_manager:sacred_treasure/triggers/sneak/
    execute if entity @s[tag=TriggerFlag.UsingItem] run function asset_manager:sacred_treasure/triggers/using_item
    execute if data storage asset:sacred_treasure {EquipmentChanges:[{_:{_:false}}]} run function asset_manager:sacred_treasure/triggers/dis_equip
    execute if data storage asset:sacred_treasure {EquipmentChanges:[{_:{_:false}}]} run function asset_manager:sacred_treasure/triggers/equip
    execute if entity @s[tag=TriggerFlag.Attack] run function asset_manager:sacred_treasure/triggers/attack
    execute if entity @s[tag=TriggerFlag.Damage] run function asset_manager:sacred_treasure/triggers/damage
# EntityStorageにデータ突っ込む
    function asset_manager:sacred_treasure/data/new/stash_to_entity_storage
# リセット
    data remove storage asset:sacred_treasure EquipmentChanges
    function asset_manager:sacred_treasure/data/current/reset
    tag @e[tag=Attacker] remove Attacker
    tag @e[tag=Victim] remove Victim
    tag @s remove TriggerFlag.Rejoin
    tag @s remove TriggerFlag.Attack
    tag @s remove TriggerFlag.ClickCarrot
    tag @s remove TriggerFlag.Damage
    tag @s remove TriggerFlag.Killed
    tag @s remove TriggerFlag.UseItem
    tag @s remove TriggerFlag.Sneak
    tag @s remove TriggerFlag.UsingItem