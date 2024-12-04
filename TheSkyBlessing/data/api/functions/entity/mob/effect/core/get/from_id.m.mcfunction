#> api:entity/mob/effect/core/get/from_id.m
# @input args
#   ID : int
#       欲しいエフェクトのID
# @within function api:entity/mob/effect/get/from_id

data remove storage api: Return.Effect
execute unless score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function oh_my_dat:please
execute if score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/apply_to_forward_target/apply.m {CB:"oh_my_dat:please"}
$data modify storage api: Return.Effect set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID)}]
