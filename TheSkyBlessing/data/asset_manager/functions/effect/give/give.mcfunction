#> asset_manager:effect/give/give
#
#
#
# @within function asset_manager:effect/give/

# エフェクトがすでに付与されている場合はそれを取得する
    function asset_manager:effect/common/try_pop_effect_data
# 追加するためのデータを加工する
# エフェクトの削除を行ったときに暫定的に再付与を防止しておく
    execute if data storage asset:effect TargetEffectData{Duration:-1} run data modify storage asset:effect EffectData set from storage asset:effect TargetEffectData
    execute unless data storage asset:effect TargetEffectData{Duration:-1} run function asset_manager:effect/give/make_effect_data
# Effectsに追加(または更新して元に戻す)
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage asset:effect EffectData
# タグ付与
    tag @s add HasAssetEffect
# リセット
    data remove storage asset:effect EffectData
    data remove storage asset:effect TargetEffectData
