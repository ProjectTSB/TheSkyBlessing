#> asset_manager:spawner/subtract_hp/
#
# 実行者を召喚したスポナーの体力を減少させる
#
# @within function api:spawner/subtract_hp

# その Mob を召喚したスポナーの ID を記録する
    execute store result storage asset:spawner TargetID int 1 run scoreboard players get @s SummonedSpawnerID
# その Mob を召喚したスポナーの体力を減少させる
    execute as @e[type=item_display,tag=Spawner,distance=..128,sort=nearest] run function asset_manager:spawner/subtract_hp/attempt_subtract.m with storage api: Argument
# リセット
    data remove storage asset:spawner TargetID
    data remove storage asset:spawner AlreadyFind
