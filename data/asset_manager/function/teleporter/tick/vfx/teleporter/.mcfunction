#> asset_manager:teleporter/tick/vfx/teleporter/
#
#
#
# @within function asset_manager:teleporter/tick/global

# 回転
    execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.Data{AngelProtection:true} run tp @s ~ ~ ~ ~2 ~

# アクティブ時のパーティクル
    execute if data storage asset:teleporter {ActivationState:"Activate"} unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData.Data{AngelProtection:true} run function asset_manager:teleporter/tick/vfx/teleporter/on_active
