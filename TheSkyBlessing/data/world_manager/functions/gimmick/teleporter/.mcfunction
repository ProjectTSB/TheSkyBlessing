#> world_manager:gimmick/teleporter/
#
#
#
# @within function core:tick/player

# this
    tag @s add this
# 対象テレポーターの特定及びタグ付与
    tag @e[type=marker,tag=Teleporter,distance=..1,limit=1] add FromTeleporter

# 処理
    execute if predicate lib:is_sneaking if entity @s[tag=!Teleported] if entity @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] run function world_manager:gimmick/teleporter/active/
# テレポート後のタグ解除処理
    execute if entity @s[tag=Teleported] unless predicate lib:is_sneaking run tag @s remove Teleported
# キャンセル処理
    execute if entity @s[tag=TeleporterInit] run function world_manager:gimmick/teleporter/cancel/check
    execute if entity @s[tag=TPCancel] run function world_manager:gimmick/teleporter/cancelled
# リセット
    tag @e[type=marker,tag=FromTeleporter,distance=..1,limit=1] remove FromTeleporter
    tag @s remove this