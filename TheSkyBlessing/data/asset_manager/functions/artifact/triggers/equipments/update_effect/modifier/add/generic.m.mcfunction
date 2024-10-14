#> asset_manager:artifact/triggers/equipments/update_effect/modifier/add/generic.m
# @input args
#   Type : attribute.name
#   ID : int
#   ThirdArgs : hexadecimal
#   SlotID : int
#   Amount : double
#   Operation : string
# @within function asset_manager:artifact/triggers/equipments/update_effect/modifier/add/

$attribute @s $(Type) modifier add 1-0-1-0-$(ThirdArgs)0000000$(SlotID) "$(ID).$(Type)" $(Amount) $(Operation)
