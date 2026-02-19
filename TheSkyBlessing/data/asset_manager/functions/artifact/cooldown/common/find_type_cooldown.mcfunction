#> asset_manager:artifact/cooldown/common/find_type_cooldown
#
#
# @input args
#   Type: string
# @within function
#   asset_manager:artifact/cooldown/main_bar/
#   asset_manager:artifact/cooldown/mini_bar/choose_max_cds/foreach
#   asset_manager:artifact/cooldown/mini_bar/choose_max_cds/check_second

$data modify storage asset:artifact TCD set from storage asset:artifact TCDs[{Type:$(Type)}]
