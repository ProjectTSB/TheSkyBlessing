#> api:entity/mob/effect/core/remove/from_level/recursion
#
#
#
# @within function
#   api:entity/mob/effect/core/remove/from_level/
#   api:entity/mob/effect/core/remove/from_level/recursion

#> private
# @private
    #declare score_holder $ClearLv
    #declare score_holder $RequiredLv

# 末尾を取り出す
    data modify storage asset:effect ID set from storage asset:effect IDList[-1]
    function asset_manager:effect/common/try_pop_effect_data

# 存在する場合
    data modify storage asset:effect CanRemove set value true
# レベルチェック
    execute unless data storage asset:effect TargetEffectData run data modify storage asset:effect CanRemove set value false
    execute if data storage asset:effect TargetEffectData store result score $ClearLv Temporary run data get storage api: Argument.ClearLv 1
    execute if data storage asset:effect TargetEffectData store result score $RequiredLv Temporary run data get storage asset:effect TargetEffectData.RequireClearLv
    execute unless score $ClearLv Temporary >= $RequiredLv Temporary run data modify storage asset:effect CanRemove set value false
# 削除条件の確認
    execute if data storage asset:effect {TargetEffectData:{IsBadEffect:false},ClearType:"bad"} run data modify storage asset:effect CanRemove set value false
    execute if data storage asset:effect {TargetEffectData:{IsBadEffect:true},ClearType:"good"} run data modify storage asset:effect CanRemove set value false
# 条件を満たしている場合は削除する
    execute if data storage asset:effect {CanRemove:true} run scoreboard players remove $ClearCount Temporary 1
    execute if data storage asset:effect {CanRemove:true} run data modify storage asset:effect TargetEffectData.Duration set value -1
# 結果を戻す
    execute if data storage asset:effect TargetEffectData run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage asset:effect TargetEffectData

# リセット
    data remove storage asset:effect ID
    data remove storage asset:effect TargetEffectData
    data remove storage asset:effect CanRemove
    scoreboard players reset $ClearLv Temporary
    scoreboard players reset $RequiredLv Temporary

# 残っていたら再帰
    data remove storage asset:effect IDList[-1]
    execute unless score $ClearCount Temporary matches ..0 if data storage asset:effect IDList[0] run function api:entity/mob/effect/core/remove/from_level/recursion
