#> world_manager:nexus_loader/try_load_asset/m
# @input
#   args
#       Type: string
#   storage world_manager:nexus_loader
#       Args.ID: int
# @within function world_manager:nexus_loader/load/fetch

# Args に Type を突っ込む
    $data modify storage world_manager:nexus_loader Args.Type set value "$(Type)"
# register 呼び出し
    $function asset_manager:$(Type)/register/register.m with storage world_manager:nexus_loader Args
# 生成条件満たしてなかったらリセットして fail
    $execute unless data storage asset:$(Type) ID run function asset_manager:$(Type)/register/reset
    $execute unless data storage asset:$(Type) ID run return fail
# DPR に含まれてるならリセットして success (すでに召喚されているはずなので)
    execute store success storage world_manager:nexus_loader ShouldLoadAsset byte 1 run function world_manager:nexus_loader/try_load_asset/check_and_put_dpr.m with storage world_manager:nexus_loader Args
    execute if data storage world_manager:nexus_loader {ShouldLoadAsset:false} run say already loaded
    $execute if data storage world_manager:nexus_loader {ShouldLoadAsset:false} run function asset_manager:$(Type)/register/reset
    execute if data storage world_manager:nexus_loader {ShouldLoadAsset:false} run return 1

# 構築
    $data modify storage world_manager:nexus_loader Args.X set from storage asset:$(Type) Pos[0]
    $data modify storage world_manager:nexus_loader Args.Y set from storage asset:$(Type) Pos[1]
    $data modify storage world_manager:nexus_loader Args.Z set from storage asset:$(Type) Pos[2]
    function world_manager:nexus_loader/try_load_asset/construct.m with storage world_manager:nexus_loader Args

# リセット
    $function asset_manager:$(Type)/register/reset

# 成功
    return 1
