#> api:entity/mob/effect/get/size/all
#
# entityに付与されている全てのエフェクトの数を取得します
#
# @output storage api: Return.EffectSize.All
# @api

# 転送先の context を同期する
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"asset_manager:effect/context/before_api",IsForwardedOnly:true}

# エフェクト数を取得
    execute store result storage api: Return.EffectSize.All int 1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[]
