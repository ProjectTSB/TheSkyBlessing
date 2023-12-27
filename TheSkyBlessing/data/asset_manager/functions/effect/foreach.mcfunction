#> asset_manager:effect/foreach
#
#
#
# @within function
#   asset_manager:effect/tick
#   asset_manager:effect/foreach

# 移動
    data modify storage asset:effect TargetEffect set from storage asset:effect Effects[-1]
    data remove storage asset:effect Effects[-1]
# 効果時間を減少させる
    execute unless data storage asset:effect TargetEffect{Duration:-1} store result storage asset:effect TargetEffect.Duration int 1 run data get storage asset:effect TargetEffect.Duration 0.9999999999
# context作成
    data modify storage asset:context id set from storage asset:effect TargetEffect.ID
    data modify storage asset:context Stack set from storage asset:effect TargetEffect.Stack
    data modify storage asset:context this set from storage asset:effect TargetEffect.Field
# 各種イベントを呼び出す
    execute if data storage asset:effect TargetEffect{NextEvent:"given"} run function asset_manager:effect/events/given/
    execute if data storage asset:effect TargetEffect{NextEvent:"re-given"} run function asset_manager:effect/events/re-given/
    execute unless data storage asset:effect TargetEffect{NextEvent:"given"} unless data storage asset:effect TargetEffect{Duration:-1} if entity @s[tag=Death] if data storage asset:effect TargetEffect{ProcessOnDied:"keep"} run function asset_manager:effect/events/tick/
    execute unless data storage asset:effect TargetEffect{NextEvent:"given"} unless data storage asset:effect TargetEffect{Duration:-1} if entity @s[tag=!Death] run function asset_manager:effect/events/tick/
    execute if data storage asset:effect TargetEffect{Duration:-1} run function asset_manager:effect/events/remove/
    execute if data storage asset:effect TargetEffect{Duration:0} run function asset_manager:effect/events/end/
# フィールドとスタックを元に戻す
    data modify storage asset:effect TargetEffect.Field set from storage asset:context this
    data modify storage asset:effect TargetEffect.Stack set from storage asset:context Stack
# ゴミを消す
    data remove storage asset:effect TargetEffect.NextEvent
# 処理済み配列に追加する
    data modify storage asset:effect NextTickEffects append from storage asset:effect TargetEffect
    execute if data storage asset:effect TargetEffect{Duration:0} run data remove storage asset:effect NextTickEffects[-1]
    execute if data storage asset:effect TargetEffect{Duration:-1} run data remove storage asset:effect NextTickEffects[-1]
# でもやっぱり消すかもしれない
    execute if score @s UsedMilk matches 1.. run data modify storage api: Argument.ClearLv set value 3
    execute if score @s UsedMilk matches 1.. run function api:entity/mob/effect/remove/from_level
    execute if entity @s[tag=ClearEffect] if data storage asset:effect TargetEffect{ProcessOnDied:"remove"} run data remove storage asset:effect NextTickEffects[-1]
# リセット
    data remove storage asset:context this
    data remove storage asset:context id
    data remove storage asset:effect TargetEffect
# まだ処理してないエフェクトがあれば再帰
    execute if data storage asset:effect Effects[0] run function asset_manager:effect/foreach