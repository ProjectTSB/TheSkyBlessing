#> world_manager:nexus_loader/load/fetch.m
# @input args
#   TargetPath: string
# @output result
#   boolean: IsLoaded
# @within function
#   world_manager:nexus_loader/load/tree/fetch
#   world_manager:nexus_loader/load/outliers/fetch

# TargetPath を直接渡すと try_load_asset でキャッシュミスが発生してしまうため ID をここで取得しておく
    $data modify storage world_manager:nexus_loader Args.ID set from storage world_manager:nexus_loader $(TargetPath).R.I

# Test
    # return run function world_manager:nexus_loader/try_load_asset.m {Type:"test"}
    # $execute if data storage world_manager:nexus_loader $(TargetPath).R{T:0b} run return run function world_manager:nexus_loader/try_load_asset.m {Type:"test"}
# Spawner
    $execute if data storage world_manager:nexus_loader $(TargetPath).R{T:1b} run return run function world_manager:nexus_loader/try_load_asset/m {Type:"spawner"}
# Container
    $execute if data storage world_manager:nexus_loader $(TargetPath).R{T:2b} run return run function world_manager:nexus_loader/try_load_asset/m {Type:"container"}
# Trader
    $execute if data storage world_manager:nexus_loader $(TargetPath).R{T:3b} run return run function world_manager:nexus_loader/try_load_asset/m {Type:"trader"}
# Island
    $execute if data storage world_manager:nexus_loader $(TargetPath).R{T:4b} run return run function world_manager:nexus_loader/try_load_asset/m {Type:"island"}
# Teleporter
    $execute if data storage world_manager:nexus_loader $(TargetPath).R{T:5b} run return run function world_manager:nexus_loader/try_load_asset/m {Type:"teleporter"}

return fail
