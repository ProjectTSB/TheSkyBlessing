#> api:button/disable
#
# ボタンのクリックを無効化します。
#
# @input storage api:
#   Argument.Key: string
# @api

execute unless data storage api: Argument.Key run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Key","color":"red"}]
function player_manager:trigger/disable/m with storage api: Argument
