#> asset_manager:teleporter/tick/vfx/teleporter/
#
#
#
# @within function asset_manager:teleporter/tick/global

# 回転
    execute unless data storage asset:teleporter Teleporters[-1].Data{AngelProtection:true} run tp @s ~ ~ ~ ~2 ~

# アクティブ時のパーティクル
    execute if data storage asset:teleporter Teleporters[-1].Data{ActivationState:"Activate"} unless data storage asset:teleporter Teleporters[-1].Data{AngelProtection:true} run function asset_manager:teleporter/tick/vfx/teleporter/on_active
