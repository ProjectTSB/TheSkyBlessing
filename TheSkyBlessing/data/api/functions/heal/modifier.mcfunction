#> api:heal/modifier
#
# ヒールライブラリの引数を実行者の補正値で補正します
#
# @input
#   as entity
#   storage api: Argument.Heal : double
#   storage api: Argument.FIxedHeal : boolean
# @output storage api: Argument.Heal : double
# @api

# 補正
    execute if entity @s[type=player] run function api:heal/core/modifier/
