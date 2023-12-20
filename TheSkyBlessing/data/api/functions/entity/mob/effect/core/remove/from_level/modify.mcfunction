#> api:entity/mob/effect/core/remove/from_level/modify
#
#
#
# @within function api:entity/mob/effect/core/remove/from_level/loop

#> private
# @private
    #declare score_holder $ClearLv
    #declare score_holder $RequiredLv

# レベルを抽出
    execute if data storage asset:effect TargetEffectData store result score $ClearLv Temporary run data get storage api: Argument.ClearLv 1
    execute if data storage asset:effect TargetEffectData store result score $RequiredLv Temporary run data get storage asset:effect TargetEffectData.RequireClearLv 1
# 要求レベルを満たしていれば残り時間に-1を代入して戻す
    execute if score $ClearLv Temporary >= $RequiredLv Temporary run data modify storage asset:effect TargetEffectData.Duration set value -1
    execute if score $ClearLv Temporary >= $RequiredLv Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage asset:effect TargetEffectData
    execute if score $ClearLv Temporary >= $RequiredLv Temporary
# リセット
    scoreboard players reset $ClearLv Temporary
    scoreboard players reset $RequiredLv Temporary
