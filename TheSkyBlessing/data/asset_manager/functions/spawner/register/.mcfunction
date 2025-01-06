#> asset_manager:spawner/register/
# @input storage asset:spawner Args.ID: int
# @output success: spawner is loaded
# @within function world_manager:nexus_loader/try_load_asset.m

# register 呼び出し
    function asset_manager:spawner/register/register.m with storage asset:spawner Args
# 生成条件満たしてなかったらリセットして fail
    execute unless data storage asset:spawner ID run function asset_manager:spawner/register/reset
    execute unless data storage asset:spawner ID run return fail
# DPR に含まれてるならリセットして success (すでに召喚されているはずなので)
    execute store success storage asset:spawner ShouldLoadAsset byte 1 run function asset_manager:spawner/register/check_and_put_dpr.m with storage asset:spawner Args
    execute if data storage asset:spawner {ShouldLoadAsset:false} run function asset_manager:spawner/register/reset
    execute if data storage asset:spawner {ShouldLoadAsset:false} run return 1

# 構築
    data modify storage asset:spawner Args.X set from storage asset:spawner Pos[0]
    data modify storage asset:spawner Args.Y set from storage asset:spawner Pos[1]
    data modify storage asset:spawner Args.Z set from storage asset:spawner Pos[2]
    function asset_manager:spawner/register/construct/m with storage asset:spawner Args

# リセット
    function asset_manager:spawner/register/reset

# 成功
    return 1
