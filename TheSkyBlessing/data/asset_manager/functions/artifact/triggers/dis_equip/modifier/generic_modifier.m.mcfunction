#> asset_manager:artifact/triggers/dis_equip/modifier/generic_modifier.m
# @input args
#   Type : attribute.name
#   UUID : uuid (hexadecimal)
# @within function asset_manager:artifact/triggers/dis_equip/modifier/foreach

$attribute @s $(Type) modifier remove $(UUID)
