#> api:mob/deal_dummy_damage
#
# モブに AttackerID からのダミーのダメージを与えます。
#
# @input storage api: Argument.AttackerID?: int
# @api

# ダメージ
    execute if data storage api: Argument.AttackerID run function api:mob/core/deal_dummy_damage/player.m with storage api: Argument
    execute unless data storage api: Argument.AttackerID run function api:mob/core/deal_dummy_damage/non-player
# リセット
    data remove storage api: Argument.AttackerID
