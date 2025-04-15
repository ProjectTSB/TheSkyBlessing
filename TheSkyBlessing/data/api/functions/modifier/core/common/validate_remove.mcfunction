#> api:modifier/core/common/validate_remove
#
#
#
# @within function api:modifier/**/remove

execute unless data storage api: Argument.UUID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" UUID","color":"red"}]
