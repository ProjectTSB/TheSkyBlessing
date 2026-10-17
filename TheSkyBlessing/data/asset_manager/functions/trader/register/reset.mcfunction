#> asset_manager:trader/register/reset
# @within function
#   world_manager:nexus_loader/try_load_asset/m
#   asset_manager:trader/common/update_recipe/by_daily
#   asset_manager:trader/common/update_recipe/by_progress/

data remove storage asset:trader ID
data remove storage asset:trader Pos
data remove storage asset:trader Name
data remove storage asset:trader Rotation
data remove storage asset:trader Trades
data remove storage asset:trader DailyUpdate
