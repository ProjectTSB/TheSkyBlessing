#> core:handler/enter_nether_portal
#
#
#
# @within function core:tick/player/

execute if data storage global {IsProduction:true} run fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace nether_portal

advancement revoke @s only core:handler/enter_nether_portal
