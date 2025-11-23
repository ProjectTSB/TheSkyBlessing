#> api:entity/mob/effect/core/get/from_level/
# @within function api:entity/mob/effect/get/from_level

# 返り値用のストレージを空にする
    data remove storage api: Return.EffectList
# エフェクト一覧を取得
    function api:mob/apply_to_forward_target/with_idempotent.m {CB:"oh_my_dat:please",IsForwardedOnly:true}
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
