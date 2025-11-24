#> asset_manager:island/dispel/boss/killed
#
#
#
# @within function asset_manager:island/dispel/boss/watcher

# タグ外す
    tag @s remove CantDispel
    scoreboard players reset @s TargetBossID
# DispelPhaseを進める
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 2b