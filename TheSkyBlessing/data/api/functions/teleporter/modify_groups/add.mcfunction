#> api:teleporter/modify_groups/add
#
#
#
# @input storage api:
#   Argument.ID : int
#   Argument.GroupID: string
# @api

# validate
    execute unless data storage api: Argument.ID run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
    execute unless data storage api: Argument.GroupID run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" GroupID","color":"red"}]
# 処理はそっちにお任せ
    function asset_manager:teleporter/append_group.m with storage api: Argument
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.GroupID
