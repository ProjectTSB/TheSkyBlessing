#> asset_manager:spawner/subtract_hp/check_id_foreach
#
# 再帰的にMobIDが一致しているかチェックする
#
# @within function asset_manager:spawner/subtract_hp/check_id*

#> Temp
# @private
    #declare score_holder $SpawnMobID

# 最後のMobIDを比較し一致する場合はスポナーの体力を減少させる
    execute store result score $SpawnMobID Temporary run data get storage asset:spawner SpawnPotentials[-1].Id
    execute store success storage asset:spawner AlreadyFind byte 1 if score $SpawnMobID Temporary = $TargetMobID Temporary
    execute if data storage asset:spawner {AlreadyFind:true} run function asset_manager:spawner/subtract_hp/subtract
# リセット
    scoreboard players reset $SpawnMobID Temporary
# 最後のMobIDを削除してまだ要素があるかつTargetCandidateが付いてないなら再帰
    data remove storage asset:spawner SpawnPotentials[-1]
    execute unless data storage asset:spawner {AlreadyFind:true} if data storage asset:spawner SpawnPotentials[-1] run function asset_manager:spawner/subtract_hp/check_id_foreach