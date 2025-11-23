#> api:damage/modifier_manual
#
# MobUUID を明示的に指定して modifier を実行します。
#
# この関数は事前に MobUUID がわかっている際に活用することが出来ます。
#
# @input storage api:
#   Argument.MobUUID: int
# @api

# 引数チェック
    execute unless data storage api: Argument.MobUUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" MobUUID","color":"red"}]

function api:damage/core/modify/non-player_manual
