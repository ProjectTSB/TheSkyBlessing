#> api:entity/mob/effect/get/size/all
#
# entityに付与されている全てのエフェクトの数を取得します。
#
# @api

# storage呼び出し
    execute unless score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function oh_my_dat:please
    execute if score @s ForwardTargetMobUUID matches -2147483648..2147483647 run function api:entity/mob/effect/core/apply_to_forward_target/apply.m {CB:"oh_my_dat:please"}
# エフェクト数を取得
    execute store result storage api: Return.EffectSize.All int 1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[]
