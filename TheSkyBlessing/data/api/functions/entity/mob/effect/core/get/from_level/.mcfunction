#> api:entity/mob/effect/core/get/from_level/
# @within function api:entity/mob/effect/get/from_level

# 返り値用のストレージを空にする
    data remove storage api: Return.EffectList
# 転送先の付与先の context を同期してから、条件判定用の一覧を取得する
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"asset_manager:effect/context/before_api",IsForwardedOnly:true}
    data modify storage api: Temp.Effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
# 条件に合うようにフィルターする
    function api:entity/mob/effect/core/get/from_level/filter/level/
    execute if data storage api: Argument.IsBadEffect run data modify storage api: Temp.Effects set from storage api: Temp.FilteredEffects
    execute if data storage api: Argument.IsBadEffect run data remove storage api: Temp.FilteredEffects
    execute if data storage api: Argument.IsBadEffect run function api:entity/mob/effect/core/get/from_level/filter/good_or_bad.m with storage api: Argument
# レベルフィルターで順番が逆になっているので戻す
    function lib:array/session/open
    data modify storage lib: Array set from storage api: Temp.FilteredEffects
    function lib:array/reverse
    data modify storage api: Return.EffectList set from storage lib: Array
    function lib:array/session/close
# リセット
    data remove storage api: Temp
