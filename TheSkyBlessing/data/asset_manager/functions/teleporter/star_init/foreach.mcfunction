#> asset_manager:teleporter/star_init/foreach
#
#
#
# @input storage asset:teleporter Teleporters: [ { Pos: [double] @ 3, Data: { Activate: boolean, Color?: "Green" } } ]
# @within function
#   asset_manager:teleporter/star_init/
#   asset_manager:teleporter/star_init/foreach

# アクティブなら召喚する
    execute unless data storage asset:teleporter Teleporters[-1].Data{Activate:false} as 0-0-0-0-0 run function asset_manager:teleporter/star_init/summon
# 末尾削除
    data remove storage asset:teleporter Teleporters[-1]
# まだ要素があるなら再帰
    execute if data storage asset:teleporter Teleporters[0] run function asset_manager:teleporter/star_init/foreach