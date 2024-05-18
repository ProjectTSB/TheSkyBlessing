#> asset_manager:effect/give/make_effect_data
#
# asset:effect の情報からエンティティに追加するエフェクトのストレージデータを作成する。
# 該当エフェクトが付与済みの場合 stack と duration について operation が
# add の場合、既存の値に加算
# replace の場合、既存値と新規値のうち大きい方に置換
# forceReplace の場合、新規値に上書きを行う
#
# @output storage asset:effect EffectData
# @within function asset_manager:effect/give/give

#> Private
# @private
    #declare score_holder $OriginDuration
    #declare score_holder $OriginStack
    #declare score_holder $Duration
    #declare score_holder $Stack
    #declare score_holder $MaxDuration
    #declare score_holder $MaxStack

# 計算用にスコアとして取得する
    execute store result score $OriginDuration Temporary run data get storage asset:effect TargetEffectData.Duration
    execute store result score $Duration Temporary run data get storage asset:effect Duration
    execute store result score $MaxDuration Temporary run data get storage asset:effect MaxDuration

    execute store result score $OriginStack Temporary run data get storage asset:effect TargetEffectData.Stack
    execute store result score $Stack Temporary run data get storage asset:effect Stack
    execute store result score $MaxStack Temporary run data get storage asset:effect MaxStack
# Operationに合わせてDurationとStackを計算する // forceReplaceはそのまま新しい値が使われるので何もしなくて良い
    execute if data storage asset:effect {DurationOperation:"replace"} run scoreboard players operation $Duration Temporary > $OriginDuration Temporary
    execute if data storage asset:effect {DurationOperation:"add"} run scoreboard players operation $Duration Temporary += $OriginDuration Temporary

    execute if data storage asset:effect {StackOperation:"replace"} run scoreboard players operation $Stack Temporary > $OriginStack Temporary
    execute if data storage asset:effect {StackOperation:"add"} run scoreboard players operation $Stack Temporary += $OriginStack Temporary
# 最大値を超えてたら最大値にする
    scoreboard players operation $Duration Temporary < $MaxDuration Temporary
    scoreboard players operation $Stack Temporary < $MaxStack Temporary
# データを作る
    data modify storage asset:effect EffectData set value {}

    data modify storage asset:effect EffectData.ID set from storage asset:effect ID
    data modify storage asset:effect EffectData.Name set from storage asset:effect Name
    data modify storage asset:effect EffectData.Description set from storage asset:effect Description
    execute store result storage asset:effect EffectData.Duration int 1 run scoreboard players get $Duration Temporary
    execute store result storage asset:effect EffectData.Stack int 1 run scoreboard players get $Stack Temporary
    data modify storage asset:effect EffectData.IsBadEffect set from storage asset:effect IsBadEffect
    data modify storage asset:effect EffectData.ProcessOnDied set from storage asset:effect ProcessOnDied
    data modify storage asset:effect EffectData.RequireClearLv set from storage asset:effect RequireClearLv
    execute unless data storage asset:effect TargetEffectData.Field run data modify storage asset:effect EffectData.Field set from storage asset:effect Field
    execute if data storage asset:effect TargetEffectData.Field run data modify storage asset:effect EffectData.Field set from storage asset:effect TargetEffectData.Field
    execute if data storage asset:effect TargetEffectData.Field run data modify storage asset:effect EffectData.Field merge from storage asset:effect Field
# イベント設定
    execute unless data storage asset:effect TargetEffectData run data modify storage asset:effect EffectData.NextEvent set value "given"
    execute if data storage asset:effect TargetEffectData run data modify storage asset:effect EffectData.NextEvent set value "re-given"
# リセット
    scoreboard players reset $OriginDuration Temporary
    scoreboard players reset $OriginStack Temporary
    scoreboard players reset $Duration Temporary
    scoreboard players reset $Stack Temporary
    scoreboard players reset $MaxDuration Temporary
    scoreboard players reset $MaxStack Temporary
