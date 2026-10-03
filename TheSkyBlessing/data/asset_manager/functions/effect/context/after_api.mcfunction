#> asset_manager:effect/context/after_api
#
# give / remove が保存データへ反映した結果を、続行中のイベントの context へ戻す。
# API 前は before_api で context を保存し、API 後はこの入口で更新結果を取り込む。
#
# @s は API の対象。api: Argument / Return は変更しない。
#
# @input as entity
# @within function
#   api:entity/mob/effect/give
#   api:entity/mob/effect/remove/from_id
#   api:entity/mob/effect/remove/from_level

# 同じ付与先の given / re-given / tick 中だけ結果を context へ戻す
# 別の付与先の値や、終了イベントで新規付与した Effect の値を終了する Effect の context へ混ぜない。
    execute unless entity @s[tag=Effect.CurrentOwner] run return 0
    execute unless data storage asset:effect Current{Phase:"callback"} run return 0

# API 後に OhMyDat の参照先を付与先へ戻し、更新後の Effect データを読み直す
# 自己再付与で Revision が変わった場合も refresh.m が Current.Revision に反映する。
    function oh_my_dat:please
    function asset_manager:effect/context/refresh.m with storage asset:effect Current
