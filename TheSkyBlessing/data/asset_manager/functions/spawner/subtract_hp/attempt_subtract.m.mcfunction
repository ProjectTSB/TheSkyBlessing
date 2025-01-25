#> asset_manager:spawner/subtract_hp/attempt_subtract.m
# @input args
#   MobID: int
# @within function asset_manager:spawner/subtract_hp/

# 既にスポナーが見つかっているなら処理しない
    execute if data storage asset:spawner {AlreadyFind:true} run return fail

# EntityStorage呼び出し
    function oh_my_dat:please
# MobIDを移す
    $execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SpawnerData.SpawnPotentials[{Id:$(MobID)}] run function asset_manager:spawner/subtract_hp/subtract/
