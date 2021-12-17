#> lib:bit_array_to_integer/
#
# bit配列をスコアに変換します。
#
# @input
#   storage lib: Argument.BitArray: list(bit)
#   bit配列
# @output
#   score $Return.Number Lib
#   変換後の値
# @api

# 引数チェック
    execute unless data storage lib: Argument.BitArray run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" BitArray","color":"red","hoverEvent":{"action":"show_text","contents":{"text":"Missing score BitArray at lib:bit_array_to_integer"}}}]
# 実行
    execute if data storage lib: Argument.BitArray run function lib:bit_array_to_integer/core/main
# リセット
    data remove storage lib: Argument.BitArray