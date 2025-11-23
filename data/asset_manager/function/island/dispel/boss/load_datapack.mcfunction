#> asset_manager:island/dispel/boss/load_datapack
#
#
#
# @within function asset_manager:island/dispel/boss/summoning_task

execute as @e[type=armor_stand,tag=CursedArtifact,distance=..0.01] run function oh_my_dat:please

data modify storage asset:datapack Datapack set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].IslandData.BossDatapack

data modify storage api: Argument.ID set value 3001
execute unless function asset:datapack/query positioned ~ ~1.5 ~ run function api:object/summon
data remove storage api: Argument.ID
