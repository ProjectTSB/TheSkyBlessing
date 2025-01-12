#> api:entity/mob/effect/get/all
#
# Effect一覧を取得する
#
# @input as player
# @api

# storage呼び出し
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}

# エフェクトを取得
    data modify storage api: Return.EffectList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
