#> api:lost_items/give
#
# プレイヤーが失ったアイテムをN個返却します
#
# @input
#   as player
#   storage api: Argument.Count
# @api

# validate
    execute unless data storage api: Argument.Count run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Count","color":"red"}]
# 代入
    execute store result score $GiveCount Temporary run data get storage api: Argument.Count
# 呼び出し
    execute if score $GiveCount Temporary matches 1.. run function player_manager:lost_item/give_part/
# リセット
    data remove storage api: Argument.Count