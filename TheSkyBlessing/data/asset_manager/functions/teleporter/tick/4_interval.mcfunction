#> asset_manager:teleporter/tick/4_interval
#
#
#
# @within function core:tick/4_interval

# 登録処理
    execute if data storage global {IsProduction:1b} run function #asset:teleporter/register