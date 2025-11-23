#> asset_manager:container/register/construct/set_loot_table/replace_artifact
#
#
#
# @within function asset_manager:container/register/construct/set_loot_table/*

# それぞれについて修正
    execute if data storage asset:container ArtifactSeeds[-1].tag.TSB.ArtifactSeed.ID run function asset_manager:container/register/construct/common/get_artifact.m {IDPath:"ArtifactSeeds[-1].tag.TSB.ArtifactSeed.ID"}
    execute if data storage asset:container ArtifactSeeds[-1].tag.TSB.ArtifactSeed.Rarity run function asset_manager:container/register/construct/set_loot_table/roll_artifact
# Slot 書き換えて Items に追加する
    data modify storage asset:container Item.Slot set from storage asset:container ArtifactSeeds[-1].Slot
    data modify storage asset:container Items append from storage asset:container Item
# まだ要素があるならループ
    data remove storage asset:container ArtifactSeeds[-1]
    execute if data storage asset:container ArtifactSeeds[0] run function asset_manager:container/register/construct/set_loot_table/replace_artifact
