#> world_manager:gimmick/teleporter/
#
#
#
# @within function core:tick/player/

# 対象テレポーターのタグ付与
    tag @e[type=marker,tag=Teleporter,distance=..1,limit=1] add FromTeleporter
# 処理
    execute if predicate lib:is_sneaking if entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function world_manager:gimmick/teleporter/active
    execute if score @s Teleporter matches 1.. unless predicate lib:is_sneaking run function world_manager:gimmick/teleporter/cancelled
    execute if score @s Teleporter matches 1.. unless entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function world_manager:gimmick/teleporter/cancelled
# リセット
    tag @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] remove FromTeleporter