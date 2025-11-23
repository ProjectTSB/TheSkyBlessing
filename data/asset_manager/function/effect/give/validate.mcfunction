#> asset_manager:effect/give/validate
#
#
#
# @output storage asset:effect IsValidArgument : boolean
# @within function asset_manager:effect/give/

data modify storage asset:effect IsValidArgument set value true

execute unless data storage asset:effect Duration run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" Duration","color":"red"}]
execute unless data storage asset:effect Duration run data modify storage asset:effect IsValidArgument set value false
execute unless data storage asset:effect Name run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Name","color":"red"}]
execute unless data storage asset:effect Name run data modify storage asset:effect IsValidArgument set value false
execute unless data storage asset:effect Description run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" Description","color":"red"}]
execute unless data storage asset:effect Description run data modify storage asset:effect IsValidArgument set value false
execute unless data storage asset:effect IsBadEffect run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません"},{"text":" IsBadEffect","color":"red"}]
execute unless data storage asset:effect IsBadEffect run data modify storage asset:effect IsValidArgument set value false