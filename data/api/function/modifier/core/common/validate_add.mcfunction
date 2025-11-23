#> api:modifier/core/common/validate_add
#
#
#
# @within function api:modifier/**/add

execute unless data storage api: Argument.UUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" UUID","color":"red"}]
execute unless data storage api: Argument.Amount run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Amount","color":"red"}]
execute unless data storage api: Argument.Operation run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Operation","color":"red"}]
