#> lib:integer_to_bit_array/
#
# スコアをbit配列に変換します
#
# @input
#   score $Argument.Number Lib
#   変換する値
# @output
#   storage lib: Return.Array: list(bit)
#   bit配列
# @api

# 引数チェック
    execute unless score $Argument.Number Lib matches -2147483648..2147483647 run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" $Argument.Integer","color":"red"}]
# 実行
    execute if score $Argument.Number Lib matches -2147483648..2147483647 run function lib:integer_to_bit_array/core/main