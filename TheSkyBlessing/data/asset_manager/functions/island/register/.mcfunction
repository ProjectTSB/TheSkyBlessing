#> asset_manager:island/register/
# @input storage asset:island Args.ID: int
# @output success: island is loaded
# @within function world_manager:nexus_loader/try_load_asset.m

# register 呼び出し
    function asset_manager:island/register/register.m with storage asset:island Args
# 生成条件満たしてなかったらリセットして fail
    execute unless data storage asset:island ID run function asset_manager:island/register/reset
    execute unless data storage asset:island ID run return fail
# DPR に含まれてるならリセットして success (すでに召喚されているはずなので)
    execute store success storage asset:island ShouldLoadAsset byte 1 run function asset_manager:island/register/check_and_put_dpr.m with storage asset:island Args
    execute if data storage asset:island {ShouldLoadAsset:false} run function asset_manager:island/register/reset
    execute if data storage asset:island {ShouldLoadAsset:false} run return 1

# 構築
    data modify storage asset:island Args.X set from storage asset:island Pos[0]
    data modify storage asset:island Args.Y set from storage asset:island Pos[1]
    data modify storage asset:island Args.Z set from storage asset:island Pos[2]
    function asset_manager:island/register/construct/m with storage asset:island Args

# リセット
    function asset_manager:island/register/reset

# 成功
    return 1
