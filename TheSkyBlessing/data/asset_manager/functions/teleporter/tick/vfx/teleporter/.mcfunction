#> asset_manager:teleporter/tick/vfx/teleporter/
#
#
#
# @within function asset_manager:teleporter/tick/global

# 回転
    tp @s ~ ~ ~ ~2 ~

# アクティブ時のパーティクル
    function oh_my_dat:please
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{ActivationState:"Activate"} run function asset_manager:teleporter/tick/vfx/teleporter/on_active
