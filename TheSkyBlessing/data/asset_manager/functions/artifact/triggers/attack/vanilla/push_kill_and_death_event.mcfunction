#> asset_manager:artifact/triggers/attack/vanilla/push_kill_and_death_event
#
#
#
# @within function asset_manager:artifact/triggers/attack/vanilla/

# プレイヤーにイベントを追加する
    execute as @p[tag=this] run function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ArtifactEvents.Kill append from storage asset:context Attack
# Mob にもイベントを追加する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death append from storage asset:context Attack
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].To
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].MobEvents.Death[-1].From int 1 run scoreboard players get @p[tag=this] UserID
