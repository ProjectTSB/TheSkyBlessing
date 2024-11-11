#> asset_manager:artifact/cooldown/mini_bar/choose_max_cds/get_tcd
#
#
# @input args
#   Type: string
# @within function asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach

$data modify storage asset:artifact TCD set from storage asset:artifact TCDs[{Type:$(Type)}]
