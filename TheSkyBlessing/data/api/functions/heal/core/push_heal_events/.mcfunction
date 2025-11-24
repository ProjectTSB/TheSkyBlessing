#> api:heal/core/push_heal_events/
#
#
#
# @within function api:heal/core/player

#> Private
# @within api:heal/core/push_heal_events/*
#declare score_holder $ReceiverUUID

# 超過回復量の計算
    function api:heal/core/push_heal_events/calc_over_heal

# ヒールされた側にイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal append value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].Amount.Base set from storage api: Argument.Fluctuation
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].Amount.Over double 0.01 run scoreboard players get $OverHeal Temporary
    execute if data storage api: Argument{ApplyTrigger:true} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].IsHoT set value false
    execute if data storage api: Argument{ApplyTrigger:false} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].IsHoT set value true
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].Metadata set from storage api: Argument.Metadata

# returnされる場合もあるのでここでリセット
    scoreboard players reset $OverHeal Temporary
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $CurrentHealth Temporary
    scoreboard players reset $HealthPer Temporary

# ApplyTriggerがtrueでないなら与回復トリガーは実行しない
    execute unless data storage api: Argument{ApplyTrigger:true} run return fail

# ヒールした側から行う処理
    scoreboard players operation $ReceiverUUID Temporary = @s UserID
    execute as @a if score @s UserID = $LatestModifiedUser UserID run function api:heal/core/push_heal_events/healer
    scoreboard players reset $ReceiverUUID Temporary
