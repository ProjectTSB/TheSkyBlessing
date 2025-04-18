#> api:button/send
#
# ボタンを実行者のチャットに送信します。
#
# @input storage api:
#   Argument.Label: string
#   Argument.Listener: id(minecraft:function)
# @api

function api:button/create_text_component
tellraw @s {"storage":"api:","nbt":"Return.ButtonTextComponent","interpret":true}

data remove storage api: Return.ButtonTextComponent
