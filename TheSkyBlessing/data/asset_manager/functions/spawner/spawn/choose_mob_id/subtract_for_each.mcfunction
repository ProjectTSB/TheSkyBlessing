#> asset_manager:spawner/spawn/choose_mob_id/subtract_for_each
#
#
#
# @within function asset_manager:spawner/spawn/choose_mob_id/*

#> temp
# @private
    #declare score_holder $Weight

# Weightを取得してTargetWeightを減算
    execute store result score $Weight Temporary run data get storage asset:spawner ClonedSpawnPotentials[-1].Weight
    scoreboard players operation $TargetWeight Temporary -= $Weight Temporary
# リセット
    scoreboard players reset $Weight Temporary
# TargetWeightが0以上なら再帰
    execute if score $TargetWeight Temporary matches 0.. run data remove storage asset:spawner ClonedSpawnPotentials[-1]
    execute if score $TargetWeight Temporary matches 0.. if data storage asset:spawner ClonedSpawnPotentials[-1] run function asset_manager:spawner/spawn/choose_mob_id/subtract_for_each