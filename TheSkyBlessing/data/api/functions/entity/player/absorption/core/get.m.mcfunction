#> api:entity/player/absorption/core/get.m
# @input args UUID: [int] @ 4
# @within function api:entity/player/absorption/get

$data modify storage api: Return.Absorption set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Absorptions[{UUID:$(UUID)}]
