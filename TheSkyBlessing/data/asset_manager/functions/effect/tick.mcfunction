#> asset_manager:effect/tick
#
#
#
# @within function core:tick/

# TODO 各種イベントの発火処理

# EntityStorage呼び出し
    function oh_my_dat:please
# 必要なデータ取得
    data modify storage asset:effect Effects set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects

# 効果時間を減らす
    function asset_manager:effect/decrement_duration/
# 各種イベント対象エフェクトのデータを作る
    data modify storage asset:effect EventWaitingEffects.Given append from storage asset:effect Effects[{NextEvent:"given"}]
    data modify storage asset:effect EventWaitingEffects.ReGiven append from storage asset:effect Effects[{NextEvent:"re-given"}]
    data modify storage asset:effect EventWaitingEffects.Tick set from storage asset:effect Effects
    data remove storage asset:effect EventWaitingEffects.Tick[{NextEvent:"given"}]
    data remove storage asset:effect EventWaitingEffects.Tick[{Duration:-1}]
    execute if entity @s[tag=Death] run data remove storage asset:effect EventWaitingEffects.Tick[{ProcessOnDied:"remove"}]
    execute if entity @s[tag=Death] run data remove storage asset:effect EventWaitingEffects.Tick[{ProcessOnDied:"stopTickUntilRespawn"}]
    data modify storage asset:effect EventWaitingEffects.Remove append from storage asset:effect Effects[{Duration:-1}]
    data modify storage asset:effect EventWaitingEffects.End append from storage asset:effect Effects[{Duration:0}]
    execute if entity @s[tag=Death] run data modify storage asset:effect EventWaitingEffects.End append from storage asset:effect Effects[{ProcessOnDied:"remove"}]
# 使わなくなったデータを消す
    data remove storage asset:effect Effects[{Duration:-1}]
    data remove storage asset:effect Effects[{Duration:0}]
    execute if entity @s[tag=Death] run data remove storage asset:effect Effects[{ProcessOnDied:"remove"}]
    data remove storage asset:effect Effects[].NextEvent
# EntityStorageに戻す
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects set from storage asset:effect Effects
# イベントを発火する
    execute if data storage asset:effect EventWaitingEffects.Given[0] run function asset_manager:effect/events/given/
    execute if data storage asset:effect EventWaitingEffects.ReGiven[0] run function asset_manager:effect/events/re-given/
    execute if data storage asset:effect EventWaitingEffects.Tick[0] run function asset_manager:effect/events/tick/
    execute if data storage asset:effect EventWaitingEffects.Remove[0] run function asset_manager:effect/events/remove/
    execute if data storage asset:effect EventWaitingEffects.End[0] run function asset_manager:effect/events/end/

# 付与されているエフェクトが何もなければタグを消す
    execute unless data storage asset:effect Effects[0] run tag @s remove HasAssetEffect

# リセット
    data remove storage asset:effect EventWaitingEffects
    data remove storage asset:effect Effects