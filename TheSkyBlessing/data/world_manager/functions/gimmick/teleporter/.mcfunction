#> world_manager:gimmick/teleporter/
#
#
#
# @within function core:tick/player

#> CancelTag
# @private
#declare tag TPCancel

# this
    tag @s add this
# 対象テレポーターのタグ付与
    tag @e[type=marker,tag=Teleporter,distance=..1,limit=1] add FromTeleporter
# 処理
    execute if predicate lib:is_sneaking if entity @s[tag=!Teleported] if entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function world_manager:gimmick/teleporter/active/

    execute if entity @s[tag=Teleported] unless predicate lib:is_sneaking run tag @s remove Teleported
    # TODO 動いた時もキャンセルしたい
    function api:data_get/on_ground
    execute if entity @s[tag=TeleporterInit] unless predicate lib:is_sneaking run tag @s add TPCancel
    execute if entity @s[tag=TeleporterInit] if data storage api: {OnGround:false} run tag @s add TPCancel
    execute if entity @s[tag=TeleporterInit] unless entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run tag @s add TPCancel
    execute if entity @s[tag=TPCancel] run function world_manager:gimmick/teleporter/cancelled
# リセット
    tag @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] remove FromTeleporter
    tag @s remove TPCancel
    tag @s remove this