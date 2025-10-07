#> api:heal/core/push_heal_events/
#
#
#
# @within function api:heal/core/player

#> Private
# @within api:heal/core/push_heal_events/*
#declare score_holder $ReceiverUUID

# ヒールされた側にイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal append value {}
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].Amount double 0.01 run data get storage api: Argument.Fluctuation 100
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].Metadata set from storage api: Argument.Metadata

# ヒールした側から行う処理
    scoreboard players operation $ReceiverUUID Temporary = @s UserID
    execute as @a if score @s UserID = $LatestModifiedUser UserID run function api:heal/core/push_heal_events/healer
    scoreboard players reset $ReceiverUUID Temporary
