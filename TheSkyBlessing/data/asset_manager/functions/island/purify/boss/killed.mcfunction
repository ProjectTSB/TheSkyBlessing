#> asset_manager:island/purify/boss/killed
#
#
#
# @within function asset_manager:island/purify/boss/watcher

# タグ外す
    tag @s remove CantPurify
    scoreboard players reset @s TargetBossID
# PurifyPhaseを進める
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.PurifyPhase set value 2b
