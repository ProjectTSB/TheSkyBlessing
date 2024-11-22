#> asset_manager:teleporter/common/increment_activation_state_version
#
#
#
# @within function
#   asset_manager:teleporter/update_activation_state/
#   asset_manager:teleporter/tick/angel_protection/*

# 現在値取得
    scoreboard players set $Version Temporary 0
    execute store result score $Version Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationStateVersion
# 加算
    scoreboard players add $Version Temporary 1
# 更新
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.ActivationStateVersion int 1 run scoreboard players get $Version Temporary
# リセット
    scoreboard players reset $Version Temporary
