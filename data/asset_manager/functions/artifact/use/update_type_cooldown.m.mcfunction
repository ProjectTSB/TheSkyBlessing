#> asset_manager:artifact/use/update_type_cooldown.m
#
#
# @input args
#   Type: string
#   Duration: int
# @within function asset_manager:artifact/use/

function oh_my_dat:please
$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TypeCooldown[{Type:$(Type)}].Value set value $(Duration)
$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TypeCooldown[{Type:$(Type)}].Max set value $(Duration)
