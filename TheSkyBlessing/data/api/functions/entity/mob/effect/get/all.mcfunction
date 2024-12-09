#> api:entity/mob/effect/get/all
#
# Effect一覧を取得する
#
# @input as player
# @api

# storage呼び出し
    execute unless score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function oh_my_dat:please
    execute if score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/apply_to_forward_target/apply.m {CB:"oh_my_dat:please"}

# エフェクトを取得
    data modify storage api: Return.EffectList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
