#> asset_manager:island/dispel/summon_boss/
#
#
#
# @within function asset_manager:island/dispel/

# リセット
    function asset_manager:island/dispel/reset
# 一定時間祈れないようにする
    tag @s add 
# 天使召喚済フラグを立てる
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.BossSummoned set value true
# 召喚用のマーカーを召喚する
    summon marker ~ ~ ~ {Tags:["Object","Uninterferable","BossSummonMarker"]}
# 召喚
    schedule function asset_manager:island/dispel/summon_boss/task 1t