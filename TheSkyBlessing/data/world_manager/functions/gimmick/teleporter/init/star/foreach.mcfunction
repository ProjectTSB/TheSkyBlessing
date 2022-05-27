#> world_manager:gimmick/teleporter/init/star/foreach
#
#
#
# @within function
#   world_manager:gimmick/teleporter/init/
#   world_manager:gimmick/teleporter/init/star/foreach

# { Pos: [double, double, double], Data: { Activate: boolean, Color?: "Yellow" } }[]

# アクティブなら召喚する
    execute unless data storage world_manager:gimmick Teleporters[-1].Data{Activate:false} as 0-0-0-0-0 run function world_manager:gimmick/teleporter/init/star/summon
# 末尾削除
    data remove storage world_manager:gimmick Teleporters[-1]
# まだ要素があるなら再帰
    execute if data storage world_manager:gimmick Teleporters[0] run function world_manager:gimmick/teleporter/init/star/foreach