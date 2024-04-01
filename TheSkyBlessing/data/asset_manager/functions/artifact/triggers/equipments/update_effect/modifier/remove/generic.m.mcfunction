#> asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/generic.m
# @input args
#   Type : attribute.name
#   ThirdArgs : hexadecimal
#   FourthArgs : int
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/remove/

$attribute @s $(Type) modifier remove 1-0-1-0-$(ThirdArgs)0000000$(FourthArgs)
