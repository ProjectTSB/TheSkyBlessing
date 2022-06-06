#> asset_manager:teleporter/tick/vfx/teleporter/
#
#
#
# @within function asset_manager:teleporter/tick/global

# rotate
    tp @s ~ ~ ~ ~2 ~
# get entity storage
    function oh_my_dat:please
# show particle
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{ActivationKind:"Activate"} positioned ~ ~0.05 ~ run function asset_manager:teleporter/tick/vfx/teleporter/active/
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TeleporterData{ActivationKind:"VisibleDeactivate"} positioned ~ ~0.05 ~ run function asset_manager:teleporter/tick/vfx/teleporter/deactive/