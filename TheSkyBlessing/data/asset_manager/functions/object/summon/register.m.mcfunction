#> asset_manager:object/summon/register.m
#
#
#
# @within function
#   api:object/core/summon
#   asset:object/extends/foreach

tellraw @a [{"text":"register: "},{"storage":"asset:context","nbt":"id"}]
$function asset:object/alias/$(id)/register
