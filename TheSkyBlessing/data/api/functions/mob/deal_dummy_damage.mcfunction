#> api:mob/deal_dummy_damage
#
# モブに AttackerID からのダミーのダメージを与えます。
#
# @input storage api:
#   Argument.AttackerID: int
# @api

# validate
    execute unless data storage api: Argument.AttackerID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" AttackerID","color":"red"}]
# ダメージ
    function api:mob/core/deal_dummy_damage.m with storage api: Argument
# リセット
    data remove storage api: Argument.AttackerID
