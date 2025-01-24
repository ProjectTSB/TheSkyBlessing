#> asset_manager:spawner/spawn/choose_mob_id/
#
# 召喚するMobをSpawnPotentialsよりランダムに選択します
#
# @output storage asset:spawner
#   Args.MobID: int
# @within function asset_manager:spawner/spawn/single/summon

# 配列を壊す操作なのでClone
    data modify storage asset:spawner ClonedSpawnPotentials set from storage asset:spawner SpawnPotentials
# Weightの総和よりも小さい乱数を生成
    execute store result score $TargetWeight Temporary run function lib:random/
    scoreboard players operation $TargetWeight Temporary %= $SpawnPotentialsWeightSum Temporary
# TargetWeightが負の値になるまで減算しつつ要素を消す
    function asset_manager:spawner/spawn/choose_mob_id/subtract_for_each
# 召喚するMobのIDを取得
    execute store result storage api: Argument.ID int 1 run data get storage asset:spawner ClonedSpawnPotentials[-1].Id
# リセット
    scoreboard players reset $TargetWeight Temporary
    data remove storage asset:spawner ClonedSpawnPotentials
