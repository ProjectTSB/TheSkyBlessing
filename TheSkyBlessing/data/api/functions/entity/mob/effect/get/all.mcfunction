#> api:entity/mob/effect/get/all
#
# Effect 一覧を取得する
#
# 転送先がある場合は、その付与先の保存データを参照する。
# 同じ付与先のイベントで変更した context も取得値へ反映する。
#
# @input as player
# @output storage api: Return.EffectList
# @api

# ForwardTarget から実際の付与先を特定し、その付与先の Effect を処理中なら context の変更を保存データへ反映する
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"asset_manager:effect/context/before_api",IsForwardedOnly:true}

# エフェクトを取得
    data remove storage api: Return.EffectList
    data modify storage api: Return.EffectList set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
