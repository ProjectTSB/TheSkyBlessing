#> asset_manager:container/register/
# @input storage asset:container Args.ID: int
# @output success: container is loaded
# @within function world_manager:nexus_loader/try_load_asset.m

# register 呼び出し
    function asset_manager:container/register/register.m with storage asset:container Args
# 生成条件満たしてなかったらリセットして fail
    execute unless data storage asset:container ID run function asset_manager:container/register/reset
    execute unless data storage asset:container ID run return fail
# DPR に含まれてるならリセットして success (すでに召喚されているはずなので)
    execute store success storage asset:container ShouldLoadAsset byte 1 run function asset_manager:container/register/check_and_put_dpr.m with storage asset:container Args
    execute if data storage asset:container {ShouldLoadAsset:false} run function asset_manager:container/register/reset
    execute if data storage asset:container {ShouldLoadAsset:false} run return 1

# 構築
    data modify storage asset:container Args.X set from storage asset:container Pos[0]
    data modify storage asset:container Args.Y set from storage asset:container Pos[1]
    data modify storage asset:container Args.Z set from storage asset:container Pos[2]
    function asset_manager:container/register/construct/m with storage asset:container Args

# リセット
    function asset_manager:container/register/reset

# 成功
    return 1
