#> lib:heal/modifier
#
# ヒールライブラリの引数を実行者の補正値で補正します
#
# @deprecated change to `api:heal/modifier`
# @input
#   as entity
#   storage lib: Argument.Heal : float
#   storage lib: Argument.FixedHeal : boolean
# @output storage lib: Argument.Heal : float
# @api

data modify storage api: Argument.Heal set from storage lib: Argument.Heal
data modify storage api: Argument.FixedHeal set from storage lib: Argument.FixedHeal

function api:heal/modifier