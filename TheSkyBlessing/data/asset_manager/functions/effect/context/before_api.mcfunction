#> asset_manager:effect/context/before_api
#
# API の参照先を @s に合わせ、同じ付与先の実行中の context を保存する。
#
# api: Argument / Return は変更しない。
#
# @input as entity
# @within function
#   api:entity/mob/effect/give
#   api:entity/mob/effect/remove/from_id
#   api:entity/mob/effect/remove/from_level
#   api:entity/mob/effect/get/all
#   api:entity/mob/effect/get/size/all
#   api:entity/mob/effect/get/size/bad
#   api:entity/mob/effect/get/size/good
#   api:entity/mob/effect/core/get/from_id.m
#   api:entity/mob/effect/core/get/from_level/
#   api:mob/apply_to_forward_target/with_idempotent.m

# API の付与先を参照する
# get の転送時は、ForwardTarget 解決後の @s で呼ばれる。
    function oh_my_dat:please

# 同じ付与先の given / re-given / tick 中だけ書き戻す
    execute if entity @s[tag=Effect.CurrentOwner] if data storage asset:effect Current{Phase:"callback"} run function asset_manager:effect/context/flush.m with storage asset:effect Current
