#> api:mob/deal_dummy_damage
#
# モブに Attacker からのダミーのダメージを与えます。
#
# @input storage api:
#   Argument.Attacker: string (selector)
# @api

# validate
    execute unless data storage api: Argument.Attacker run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Attacker","color":"red"}]
# ダメージ
    function api:mob/core/deal_dummy_damage.m with storage api: Argument
# リセット
    data remove storage api: Argument.Attacker
