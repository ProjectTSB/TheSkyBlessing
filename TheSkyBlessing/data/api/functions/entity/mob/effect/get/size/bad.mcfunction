#> api:entity/mob/effect/get/size/bad
#
# entityに付与されている悪い効果のエフェクトの数を取得します。
#
# 転送先がある場合は、その付与先の保存データを参照する。
# 同じ付与先のイベントで変更した context も取得値へ反映する。
#
# @output storage api: Return.EffectSize.Bad
# @api

# 転送先の context を同期する
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"asset_manager:effect/context/before_api",IsForwardedOnly:true}

# エフェクト数を取得
    execute store result storage api: Return.EffectSize.Bad int 1 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{IsBadEffect: 1b}]
