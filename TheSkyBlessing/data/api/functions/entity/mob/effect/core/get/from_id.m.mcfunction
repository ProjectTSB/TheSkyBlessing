#> api:entity/mob/effect/core/get/from_id.m
# @input args
#   ID : int
#       欲しいエフェクトのID
# @within function api:entity/mob/effect/get/from_id

function oh_my_dat:please
$data modify storage api: Return.Effect set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID)}]