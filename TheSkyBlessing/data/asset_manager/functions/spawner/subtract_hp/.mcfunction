#> asset_manager:spawner/subtract_hp/
#
# asset:context idを召喚するスポナーの体力を減少させる
#
# @within function api:spawner/subtract_hp

# TargetMobID取得
    execute store result score $TargetMobID Temporary run data get storage asset:context id
# そのMobを特定/処理する
    execute as @e[type=item_display,tag=Spawner,distance=..100,sort=nearest] run function asset_manager:spawner/subtract_hp/check_already_find
# リセット
    scoreboard players reset $TargetMobID Temporary
    data remove storage asset:spawner AlreadyFind
