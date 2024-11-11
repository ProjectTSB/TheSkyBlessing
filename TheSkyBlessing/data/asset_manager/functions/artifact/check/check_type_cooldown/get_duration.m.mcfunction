#> asset_manager:artifact/check/check_type_cooldown/get_duration.m
#
#
# @input args
#   Type: string
# @within function asset_manager:artifact/check/check_type_cooldown/foreach

$return run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TypeCooldown[{Type:$(Type)}].Value
