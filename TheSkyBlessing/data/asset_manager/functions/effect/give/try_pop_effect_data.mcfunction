#> asset_manager:effect/give/try_pop_effect_data
#
#
# @output storage asset:effect OriginEffectData : EffectData | null
# @within function asset_manager:effect/give/give

# セッション開く
    function lib:array/session/open
# エフェクトをすでに持っているかを取得する
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects[].ID
    data modify storage lib: CompareTarget set from storage asset:effect ID
    function lib:array/compare_single
# 該当IDのデータの取得を試みる
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask_inverted
    data modify storage asset:effect OriginEffectData set from storage lib: Array[0]
# Effectsから該当IDのデータを消す
    data modify storage lib: Array set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects
    data modify storage lib: Masks set from storage lib: CompareResult
    function lib:array/mask
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects set from storage lib: Array
# セッション閉じる
    function lib:array/session/close