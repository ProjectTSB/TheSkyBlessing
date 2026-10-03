#> api:entity/mob/effect/get/all
#
# Effect 一覧を取得する
#
# @input as player
# @output storage api: Return.EffectList
# @api

# 転送先の context を同期する
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"asset_manager:effect/context/before_api",IsForwardedOnly:true}

# エフェクトを取得
    data remove storage api: Return.EffectList
    data modify storage api: Return.EffectList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
