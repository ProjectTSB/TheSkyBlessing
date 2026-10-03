#> asset_manager:effect/context/after_api
#
# give / remove の結果を、同じ付与先の実行中の context へ反映する。
#
# @input as entity
# @within function
#   api:entity/mob/effect/give
#   api:entity/mob/effect/remove/from_id
#   api:entity/mob/effect/remove/from_level

# 同じ付与先の given / re-given / tick 中だけ読み直す
    execute unless entity @s[tag=Effect.CurrentOwner] run return 0
    execute unless data storage asset:effect Current{Phase:"callback"} run return 0

# API の更新結果を反映する
    function oh_my_dat:please
    function asset_manager:effect/context/refresh.m with storage asset:effect Current
