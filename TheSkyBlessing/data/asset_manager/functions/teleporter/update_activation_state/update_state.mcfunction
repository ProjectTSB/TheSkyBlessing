#> asset_manager:teleporter/update_activation_state/update_state
#
#
#
# @within function asset_manager:teleporter/update_activation_state/

#> Private
# @private
#declare score_holder $Version

# テレポーターのEntityStorageを取得する
    function oh_its_dat:please

# ActivationState を更新する
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationState set from storage api: Argument.ActivationState
# バージョンを更新する
    scoreboard players set $Version Temporary 0
    execute store result score $Version Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationStateVersion
    scoreboard players add $Version Temporary 1
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationStateVersion int 1 run scoreboard players get $Version Temporary

# IDから対象テレポーターのマスタデータを取得する
    function asset_manager:teleporter/update_activation_state/pop_master_data_from_teleporter_id
# 状態を更新する
    data modify storage asset:teleporter TargetTeleporterData.Data.ActivationState set from storage api: Argument.ActivationState
# 元に戻す
    data modify storage asset:teleporter Teleporters append from storage asset:teleporter TargetTeleporterData

# リセット
    scoreboard players reset $Version Temporary
