#> asset_manager:artifact/triggers/equip/modifier/reshape_uuid.m
# @input args
#   UUID3 : int @ 0..9999
#   UUID4 : int @ 1..7
# @within function asset_manager:artifact/triggers/equip/modifier/foreach

$data modify storage asset:artifact Modifier.UUID set value "1-0-1-0-$(UUID3)0000000$(UUID4)"
