#> asset_manager:island/register/construct/set_data
#
#
#
# @within function asset_manager:island/register/construct/

# EntityStorage呼び出し
    function oh_my_dat:please
# Entityの方向
    data modify entity @s Pose.Head set value [0f,0.001f,0f]
    #data modify entity @s Pose.Head[1] set from storage asset:island Rotation
    data modify entity @s Rotation[0] set from storage asset:island Rotation
# EntityStorageに保存するもの
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.ID set from storage asset:island ID
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.BossDatapack set from storage asset:island BossDatapack
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.BossID set from storage asset:island BossID
    execute if data storage asset:island BossID run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.HasBoss set value true
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.DispelPhase set value 0b
# リセット
    tag @s remove CursedArtifactInit
