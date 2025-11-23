#> asset_manager:spawner/spawn/single/set_summoned_spawner_id
#
#
#
# @within function asset_manager:spawner/spawn/single/summon

execute store result score @s SummonedSpawnerID run data get storage asset:spawner Args.SpawnerID
