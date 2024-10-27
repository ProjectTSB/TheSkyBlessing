#> asset_manager:artifact/triggers/
#
# 各トリガーに処理受け渡し
#
# @within function asset_manager:artifact/tick/player

# IDの代入
    function asset_manager:artifact/data/old/init
    function asset_manager:artifact/data/new/init
# 装備の変更チェック
    execute if data storage asset:context Old run function asset_manager:artifact/triggers/equipments/compare
# 変更時の更新処理
    execute if data storage asset:artifact {EquipmentChanges:[{_:{_:false}}]} run function asset_manager:artifact/triggers/equipments/update_cooldown/
# イベント情報を取得
    data modify storage asset:artifact ArtifactEvents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents set value {}
# 各トリガーに処理受け渡し & AutoSlotのリセット
    function asset_manager:artifact/triggers/tick
    execute if entity @s[tag=TriggerFlag.ClickCarrot] run function asset_manager:artifact/triggers/click.carrot
    execute if entity @s[tag=TriggerFlag.UseItem] run function asset_manager:artifact/triggers/use_item/
    execute if entity @s[tag=TriggerFlag.Sneak] run function asset_manager:artifact/triggers/sneak/
    execute if entity @s[tag=TriggerFlag.UsingItem] run function asset_manager:artifact/triggers/using_item
    execute if data storage asset:artifact {EquipmentChanges:[{_:{_:false}}]} run function asset_manager:artifact/triggers/dis_equip
    execute if data storage asset:artifact {EquipmentChanges:[{_:{_:false}}]} run function asset_manager:artifact/triggers/equip
    execute if data storage asset:artifact ArtifactEvents.Attack[0] run function asset_manager:artifact/triggers/attack/
    execute if data storage asset:artifact ArtifactEvents.Damage[0] run function asset_manager:artifact/triggers/damage/
    execute if data storage asset:artifact ArtifactEvents.Killed[0] run function asset_manager:artifact/triggers/killed/
    execute if data storage asset:artifact ArtifactEvents.Heal[0] run function asset_manager:artifact/triggers/heal/
    execute if data storage asset:artifact ArtifactEvents.ReceiveHeal[0] run function asset_manager:artifact/triggers/receive_heal/
# EntityStorageにデータ突っ込む
    function asset_manager:artifact/data/new/stash_to_entity_storage
# リセット
    data remove storage asset:artifact EquipmentChanges
    data remove storage asset:artifact ArtifactEvents
    function asset_manager:artifact/data/current/reset
    tag @s remove TriggerFlag.ClickCarrot
    tag @s remove TriggerFlag.UseItem
    tag @s remove TriggerFlag.Sneak
    tag @s remove TriggerFlag.UsingItem
