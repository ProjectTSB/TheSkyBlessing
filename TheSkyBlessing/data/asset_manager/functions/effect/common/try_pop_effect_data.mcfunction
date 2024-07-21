#> asset_manager:effect/common/try_pop_effect_data
#
# プレイヤーのエフェクトデータから該当IDのデータの引き抜きを試みる
#
# @input storage asset:effect ID
# @output storage asset:effect TargetEffectData : EffectData | null
# @within function
#   api:entity/mob/effect/core/remove/from_id
#   api:entity/mob/effect/core/remove/from_level/recursion
#   asset_manager:effect/give/give

# storage呼び出し
    function oh_my_dat:please
# セッション開く
    function lib:array/session/open
# エフェクトをすでに持っているかを取得する
    data modify storage lib: Array append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[].ID
    data modify storage lib: CompareTarget set from storage asset:effect ID
    function lib:array/compare_single
# 該当IDのデータの取得を試みる
    data remove storage asset:effect TargetEffectData
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask_inverted
    data modify storage asset:effect TargetEffectData set from storage lib: Array[0]
# Effectsから該当IDのデータを消す
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects set from storage lib: Array
# セッション閉じる
    function lib:array/session/close
