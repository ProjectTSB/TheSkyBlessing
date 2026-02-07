#> api:heal/core/push_heal_events/
#
#
#
# @within function api:heal/core/player

# 超過回復量の計算
    function api:heal/core/push_heal_events/calc_over_heal

# 現在体力を回復前の体力用に取得
    function api:data_get/health

# ヒールされた側にイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal append value {}
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].Amount.Base set from storage api: Argument.Fluctuation
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].Amount.Over float 0.01 run scoreboard players get $OverHeal Temporary
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].PreviousHealth set from storage api: Health
    execute if data storage api: Argument{ApplyTrigger:true} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].IsHoT set value false
    execute if data storage api: Argument{ApplyTrigger:false} run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].IsHoT set value true
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].Metadata set from storage api: Argument.Metadata

# ApplyTriggerがtrueなら、ヒールした側からトリガーをpushする
    execute if data storage api: Argument{ApplyTrigger:true} run function api:heal/core/push_heal_events/from_healer/

# リセット
    scoreboard players reset $OverHeal Temporary
