#> asset_manager:artifact/triggers/equip/modifier/generic_modifier.m
# @input args
#   Type : attribute.name
#   UUID : uuid (hexadecimal)
#   UUID3 : int
#   Amount : double
#   Operation : string
# @within function asset_manager:artifact/triggers/equip/modifier/foreach

$attribute @s $(Type) modifier add $(UUID) "$(UUID3).$(Type)" $(Amount) $(Operation)
