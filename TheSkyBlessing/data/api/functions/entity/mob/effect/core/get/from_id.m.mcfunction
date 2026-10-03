#> api:entity/mob/effect/core/get/from_id.m
# @input args
#   ID : int
#       欲しいエフェクトのID
# @within function api:entity/mob/effect/get/from_id

# 前回の取得結果を消す
    data remove storage api: Return.Effect

# ForwardTarget から実際の付与先を特定し、その付与先の context を保存データへ反映する
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"asset_manager:effect/context/before_api",IsForwardedOnly:true}

# context を書き戻した保存データから指定 ID の Effect を返す
    $data modify storage api: Return.Effect set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[{ID:$(ID)}]
