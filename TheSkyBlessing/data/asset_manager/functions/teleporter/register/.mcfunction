#> asset_manager:teleporter/register/
# @input storage asset:teleporter Args.ID: int
# @output success: teleporter is loaded
# @within function world_manager:nexus_loader/try_load_asset.m

# register 呼び出し
    function asset_manager:teleporter/register/register.m with storage asset:teleporter Args
# 生成条件満たしてなかったらリセットして fail
    execute unless data storage asset:teleporter ID run function asset_manager:teleporter/register/reset
    execute unless data storage asset:teleporter ID run return fail
# DPR に含まれてるならリセットして success (すでに召喚されているはずなので)
    execute store success storage asset:teleporter ShouldLoadAsset byte 1 run function asset_manager:teleporter/register/check_and_put_dpr.m with storage asset:teleporter Args
    execute if data storage asset:teleporter {ShouldLoadAsset:false} run function asset_manager:teleporter/register/reset
    execute if data storage asset:teleporter {ShouldLoadAsset:false} run return 1

# 構築
    data modify storage asset:teleporter Args.X set from storage asset:teleporter Pos[0]
    data modify storage asset:teleporter Args.Y set from storage asset:teleporter Pos[1]
    data modify storage asset:teleporter Args.Z set from storage asset:teleporter Pos[2]
    function asset_manager:teleporter/register/construct/m with storage asset:teleporter Args

# リセット
    function asset_manager:teleporter/register/reset

# 成功
    return 1
