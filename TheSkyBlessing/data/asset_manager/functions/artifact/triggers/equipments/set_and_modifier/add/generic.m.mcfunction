#> asset_manager:artifact/triggers/equipments/set_and_modifier/add/generic.m
# @input args
#   Type : attribute.name
#   ID : int
#   ArtifactID : hexadecimal
#   SlotID : int
#   Amount : double
#   Operation : string
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/add/process

$attribute @s $(Type) modifier add 1-0-1-0-$(ArtifactID)0000000$(SlotID) "$(ID).$(Type)" $(Amount) $(Operation)
