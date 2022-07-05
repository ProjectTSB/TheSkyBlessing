#> asset_manager:island/dispel/boss/
#
#
#
# @within function asset_manager:island/dispel/

# リセット
    function asset_manager:island/dispel/cancelled
# 一定時間祈れないようにする
    tag @s add CantDispel
# 天使召喚済フラグを立てる
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 1b
# 召喚用のマーカーを召喚する
    summon marker ~ ~ ~ {Tags:["Object","Uninterferable","BossSummonMarker"]}