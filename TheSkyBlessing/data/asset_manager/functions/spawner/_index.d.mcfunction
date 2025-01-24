#> asset_manager:spawner/_index.d
# @private

#> storage
# @within *
#   asset:spawner/*/*
#   asset_manager:spawner/**
    #declare storage asset:spawner

#> SpawnerTag
# @within *
#   asset_manager:spawner/**
#   asset:spawner/*/
#   core:tick/
    #declare tag Spawner

#> Register
# @within * asset_manager:spawner/register/**
    #declare tag SpawnerInit
    #declare score_holder $SpawnPotentialsWeightSum
    #declare score_holder $Weight

#> Process tag
# @within * asset_manager:spawner/tick/*
    #declare tag Success
    #declare score_holder $RequiredPlayerRange
    #declare tag this

#> SpawnData
# @within * asset_manager:spawner/spawn/**
    #declare score_holder $SpawnPotentialsWeightSum
    #declare score_holder $PosX
    #declare score_holder $PosY
    #declare score_holder $PosZ
    #declare score_holder $MinSpawnDelay
    #declare score_holder $MaxSpawnDelay
    #declare score_holder $SpawnCount
    #declare score_holder $SpawnRange
    #declare score_holder $NearbyEntities
    #declare score_holder $MaxNearbyEntities
    #declare tag SpawnMarker

#> Choose
# @within * asset_manager:spawner/spawn/choose_mob_id/*
    #declare score_holder $TargetWeight

#> SubtractHPSystem
# @within * asset_manager:spawner/subtract_hp/**
    #declare score_holder $TargetMobID
