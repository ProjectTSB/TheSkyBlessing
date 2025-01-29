#> asset_manager:spawner/subtract_hp/
#
# asset:context idを召喚するスポナーの体力を減少させる
#
# @within function api:spawner/subtract_hp

# その Mob を召喚する最寄りのスポナー 1 つの体力を減少させる
    execute as @e[type=item_display,tag=Spawner,distance=..128,sort=nearest] run function asset_manager:spawner/subtract_hp/attempt_subtract.m with storage api: Argument
# リセット
    data remove storage asset:spawner AlreadyFind
