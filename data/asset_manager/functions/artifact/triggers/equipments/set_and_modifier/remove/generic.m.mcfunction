#> asset_manager:artifact/triggers/equipments/set_and_modifier/remove/generic.m
# @input args
#   Type : attribute.name
#   ArtifactID : hexadecimal
#   SlotID : int
# @within function asset_manager:artifact/triggers/equipments/set_and_modifier/remove/process

$attribute @s $(Type) modifier remove 1-0-1-0-$(ArtifactID)0000000$(SlotID)
