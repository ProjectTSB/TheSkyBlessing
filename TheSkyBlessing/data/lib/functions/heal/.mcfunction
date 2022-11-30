#> lib:heal/
#
# 実行者のエンティティを回復させます。
#
# 実行者はHealthを持つEntityである必要があります。
#
# @deprecated change to `api:heal/`
# @input
#   as living entity
#   storage lib: Argument.Heal : float
#   storage lib: Argument.FixedHeal? : boolean(default: false)
# @api

execute unless data storage api: Argument.Heal run data modify storage api: Argument.Heal set from storage lib: Argument.Heal
execute unless data storage api: Argument.FixedHeal run data modify storage api: Argument.FixedHeal set from storage lib: Argument.FixedHeal

function api:heal/