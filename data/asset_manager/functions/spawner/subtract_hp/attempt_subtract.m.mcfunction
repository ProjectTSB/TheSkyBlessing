#> asset_manager:spawner/subtract_hp/attempt_subtract.m
# @input args
#   MobID: int
# @within function asset_manager:spawner/subtract_hp/

#> private
# @private
    #declare score_holder $DifferentSpawner

# 既にスポナーが見つかっているなら処理しない
    execute if data storage asset:spawner {AlreadyFind:true} run return fail

# EntityStorage呼び出し
    function oh_my_dat:please
# IDが一致しているか確かめる
    data modify storage asset:spawner CopiedTargetID set from storage asset:spawner TargetID
    execute store success score $DifferentSpawner Temporary run data modify storage asset:spawner CopiedTargetID set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.ID
# 一致しているなら実行する
    execute if score $DifferentSpawner Temporary matches 0 run function asset_manager:spawner/subtract_hp/subtract/

# リセット
    data remove storage asset:spawner CopiedTargetID
    scoreboard players reset $DifferentSpawner Temporary
