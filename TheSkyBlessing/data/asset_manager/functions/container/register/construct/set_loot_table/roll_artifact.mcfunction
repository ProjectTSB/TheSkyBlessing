#> asset_manager:container/register/construct/set_loot_table/roll_artifact
#
#
#
# @within function
#   asset_manager:container/register/construct/set_loot_table/replace_artifact
#   asset_manager:container/register/construct/set_loot_table/roll_artifact

data modify block 10000 0 10000 Items set value []

data modify storage api: Argument.Rarity set from storage asset:container ArtifactSeeds[-1].tag.TSB.ArtifactSeed.Rarity
function api:artifact/box/from_rarity

data modify storage asset:container RollResult set from block 10000 0 10000 Items
execute if data storage asset:container RollResult[0] unless data storage asset:container RollResult[1] run data modify storage asset:container Item set from storage asset:container RollResult[0]
execute if data storage asset:container RollResult[1] run function asset_manager:container/register/construct/set_loot_table/roll_artifact
