#> asset_manager:trader/register/
# @input storage asset:trader Args.ID: int
# @output success: trader is loaded
# @within function world_manager:nexus_loader/try_load_asset.m

# register 呼び出し
    function asset_manager:trader/register/register.m with storage asset:trader Args
# 生成条件満たしてなかったらリセットして fail
    execute unless data storage asset:trader ID run function asset_manager:trader/register/reset
    execute unless data storage asset:trader ID run return fail
# DPR に含まれてるならリセットして success (すでに召喚されているはずなので)
    execute store success storage asset:trader ShouldLoadAsset byte 1 run function asset_manager:trader/register/check_and_put_dpr.m with storage asset:trader Args
    execute if data storage asset:trader {ShouldLoadAsset:false} run function asset_manager:trader/register/reset
    execute if data storage asset:trader {ShouldLoadAsset:false} run return 1

# 構築
    data modify storage asset:trader Args.X set from storage asset:trader Pos[0]
    data modify storage asset:trader Args.Y set from storage asset:trader Pos[1]
    data modify storage asset:trader Args.Z set from storage asset:trader Pos[2]
    function asset_manager:trader/register/construct/m with storage asset:trader Args

# リセット
    function asset_manager:trader/register/reset

# 成功
    return 1
