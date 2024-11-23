#> asset_manager:artifact/triggers/
#
# トリガー処理を行う
#
# @within function asset_manager:artifact/tick/player

# IDの代入
    function asset_manager:artifact/data/old/init
    function asset_manager:artifact/data/new/init
# 装備のデータの抽出
    function asset_manager:artifact/data/new/fetch_data/
# イベント情報を取得
    data modify storage asset:artifact ArtifactEvents set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents set value {}
# 装備の変更チェック
    execute if data storage asset:artifact Old run function asset_manager:artifact/triggers/equipments/compare
# 変更時の更新処理
    execute if data storage asset:artifact {EquipmentChanges:[{_:{_:false}}]} run function asset_manager:artifact/triggers/equipments/update_cooldown/
    execute if data storage asset:artifact {EquipmentChanges:[{_:{_:false}}]} run function asset_manager:artifact/triggers/equipments/update_cooldown_type
# 各神器にトリガー受けわたし

# EntityStorageにデータ突っ込む
    function asset_manager:artifact/data/new/stash_to_entity_storage
# リセット
    data remove storage asset:artifact EquipmentChanges
    data remove storage asset:artifact ArtifactEvents
    data remove storage asset:artifact New
    data remove storage asset:artifact Old
    tag @s remove TriggerFlag.ClickCarrot
    tag @s remove TriggerFlag.UseItem
    tag @s remove TriggerFlag.Sneak
    tag @s remove TriggerFlag.UsingItem
