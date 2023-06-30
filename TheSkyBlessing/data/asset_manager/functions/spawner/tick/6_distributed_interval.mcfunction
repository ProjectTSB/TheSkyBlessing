#> asset_manager:spawner/tick/6_distributed_interval
#
#
#
# @within function core:tick/6_distributed_interval

execute if data storage global {IsProduction:1b} if score $DistributeGroup Global matches 0 run function #asset:spawner/register/a
execute if data storage global {IsProduction:1b} if score $DistributeGroup Global matches 1 run function #asset:spawner/register/b
execute if data storage global {IsProduction:1b} if score $DistributeGroup Global matches 2 run function #asset:spawner/register/c
execute if data storage global {IsProduction:1b} if score $DistributeGroup Global matches 3 run function #asset:spawner/register/d
execute if data storage global {IsProduction:1b} if score $DistributeGroup Global matches 4 run function #asset:spawner/register/e
execute if data storage global {IsProduction:1b} if score $DistributeGroup Global matches 5 run function #asset:spawner/register/f