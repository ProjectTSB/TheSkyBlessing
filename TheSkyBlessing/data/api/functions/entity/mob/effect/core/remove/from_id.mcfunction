#> api:entity/mob/effect/core/remove/from_id
#
#
#
# @within function api:entity/mob/effect/remove/from_id

# エフェクトを持ってなかったら return
    execute if entity @s[tag=HasAssetEffect] run return 0

# 該当IDのデータを引っこ抜く
    data modify storage asset:effect ID set from storage api: Argument.ID
    function asset_manager:effect/common/try_pop_effect_data
# 存在する場合は残り時間を-1に設定して元に戻す
    execute if data storage asset:effect TargetEffectData run data modify storage asset:effect TargetEffectData.Duration set value -1
    execute if data storage asset:effect TargetEffectData run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage asset:effect TargetEffectData
