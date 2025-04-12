#> api:mob/modify_health
#
# Mob の現在体力を増減します
#
# 与えられた引数が正の場合、その数値分体力を増加させ、負の場合、その数値分体力を減少させます
#
# また、この関数の利用後の体力は必ず 0.01 以上最大体力以下となり、
# この関数で Mob は死亡させることができないことに注意してください
#
# 天使の場合、ボスバーの更新を怠らないように気を付けてください
#
# @input storage api:
#   Argument.Delta: double
# @api

execute unless data storage api: Argument.Delta run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Delta","color":"red"}]

function api:mob/apply_to_forward_target/with_idempotent.m {CB:"api:mob/core/modify_health",IsForwardedOnly:true}

data remove storage api: Argument.Delta
