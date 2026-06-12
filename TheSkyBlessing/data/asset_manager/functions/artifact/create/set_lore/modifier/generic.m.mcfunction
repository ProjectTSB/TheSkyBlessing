#> asset_manager:artifact/create/set_lore/modifier/generic.m
# @input args
#   Type : string
# @within function asset_manager:artifact/create/set_lore/modifier/write

$data modify storage asset:artifact Line[1] set value '{"translate":"attribute.name.$(Type)"}'
