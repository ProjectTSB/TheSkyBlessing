#> api:heal/modifier
#
# ヒールライブラリの引数を実行者の補正値で補正します
#
# @input
#   as entity
#   storage api: Argument.Heal : float
#   storage api: Argument.FIxedHeal : boolean
# @output storage api: Argument.Heal : float
# @api

# 補正
    execute if entity @s[type=player] unless data storage api: Argument{FixedHeal:true} run function api:heal/core/modifier