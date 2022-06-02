#> asset_manager:teleporter/tick/star_init/foreach
#
#
#
# @input storage asset:teleporter FilteredTeleporters
# @within function
#   asset_manager:teleporter/tick/star_init/
#   asset_manager:teleporter/tick/star_init/foreach

# アクティブなら召喚する
    execute unless data storage asset:teleporter FilteredTeleporters[-1].Data{ActivationKind:"Activate"} as 0-0-0-0-0 run function asset_manager:teleporter/tick/star_init/summon
# 末尾削除
    data remove storage asset:teleporter FilteredTeleporters[-1]
# まだ要素があるなら再帰
    execute if data storage asset:teleporter FilteredTeleporters[0] run function asset_manager:teleporter/tick/star_init/foreach