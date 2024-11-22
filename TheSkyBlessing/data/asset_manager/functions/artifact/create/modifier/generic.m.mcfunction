#> asset_manager:artifact/create/modifier/generic.m
# @input args
#   Type : string
# @within function asset_manager:artifact/create/modifier/

$data modify storage asset:artifact Line[1] set value '{"translate":"attribute.name.$(Type)"}'
