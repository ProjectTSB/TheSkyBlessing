#> asset_manager:container/register/construct/set_loot_table/roll_artifact
#
#
#
# @within function
#   asset_manager:container/register/construct/set_loot_table/replace_artifact
#   asset_manager:container/register/construct/set_loot_table/roll_artifact

data modify block 10000 0 10000 Items set value []

data modify storage api: Argument.Rarity set from storage asset:container ArtifactSeeds[-1].components."minecraft:custom_data".TSB.ArtifactSeed.Rarity
function api:artifact/storage/from_rarity

execute if data storage api: Return.Artifacts[0] unless data storage api: Return.Artifacts[1] run data modify storage asset:container Item set from storage api: Return.Artifacts[0]
execute if data storage api: Return.Artifacts[1] run function asset_manager:container/register/construct/set_loot_table/roll_artifact
