#> api:button/create_text_component
#
# ボタンの TextComponent を作成します。
#
# @input storage api:
#   Argument.Label: string(TextComponent)
#   Argument.Key: string
#   Argument.Listener?: id(minecraft:function)
# @output storage api:
#   Return.ButtonTextComponent: string(TextComponent)
# @api

execute unless data storage api: Argument.Label run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Label","color":"red"}]
execute unless data storage api: Argument.Key run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Key","color":"red"}]
execute unless data storage api: Argument.Listener run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Listener","color":"red"}]

execute store result storage api: Args.TriggerIndex int 1 run function player_manager:trigger/register/m with storage api: Argument

data modify storage api: Args.Label set from storage api: Argument.Label
function api:button/core/create_text_component.m with storage api: Args

data remove storage api: Args
data remove storage api: Argument.Label
data remove storage api: Argument.Listener
