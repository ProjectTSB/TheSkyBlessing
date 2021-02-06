#> lib:heal/modifier
#
# ヒールライブラリの引数を実行者の補正値で補正します
#
# @input
#   as entity
#   storage lib: Argument.Heal : float
# @output storage lib: Argument.Heal : float
# @api

# 補正
    execute if entity @s[type=player] run function lib:heal/core/modifier