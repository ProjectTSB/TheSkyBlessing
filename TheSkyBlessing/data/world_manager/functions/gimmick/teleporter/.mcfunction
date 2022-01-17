#> world_manager:gimmick/teleporter/
#
#
#
# @within function core:tick/player

# this
    tag @s add this
# 対象テレポーターのタグ付与
    tag @e[type=marker,tag=Teleporter,distance=..1,limit=1] add FromTeleporter
# 処理
    execute if predicate lib:is_sneaking if entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function api:data_get/on_ground
    execute if predicate lib:is_sneaking if entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] if data storage api: {OnGround:true} run function world_manager:gimmick/teleporter/active/
    execute unless predicate lib:is_sneaking run function world_manager:gimmick/teleporter/cancelled
    execute unless data storage api: {OnGround:true} run function world_manager:gimmick/teleporter/cancelled
    # TODO 動いた時もキャンセルしたい
    execute unless entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function world_manager:gimmick/teleporter/cancelled
# リセット
    tag @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] remove FromTeleporter
    tag @s remove this