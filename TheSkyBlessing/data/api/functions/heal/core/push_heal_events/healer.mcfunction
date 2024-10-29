#> api:heal/core/push_heal_events/healer
#
#
#
# @within function api:heal/core/push_heal_events/

#> Private
# @private
#declare score_holder $LastIndex

# ヒールされた側にイベントを追加する
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.ReceiveHeal[-1].From int 1 run scoreboard players get @s UserID

# ヒールした側にイベントを追加する
    function oh_my_dat:please
    # Index が同一 (即ち、同一の modifier 後の対象) ではない場合は、新規に追加する
        execute store result score $LastIndex Temporary run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Heal[-1].Index
        execute unless score $LastIndex Temporary = $ModifierIndex Global run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Heal append value {}
        execute unless score $LastIndex Temporary = $ModifierIndex Global run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Heal[-1].Index int 1 run scoreboard players get $ModifierIndex Global
        execute unless score $LastIndex Temporary = $ModifierIndex Global run execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Heal[-1].Amount double 0.01 run data get storage api: Argument.Fluctuation 100
    # ヒール対象に追加する
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Heal[-1].To append value -1
        execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Heal[-1].To[-1] int 1 run scoreboard players get $ReceiverUUID Temporary

# リセット
    scoreboard players reset $LastIndex Temporary
