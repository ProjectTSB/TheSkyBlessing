#> api:spawner/subtract_hp
#
#
#
# @input storage api:
#   Argument.MobID: int
# @api

# validate
    execute unless data storage api: Argument.MobID run return run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" MobID","color":"red"}]
# 呼び出し
    execute at @s run function asset_manager:spawner/subtract_hp/
# リセット
    data remove storage api: Argument.MobID
