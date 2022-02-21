#> asset_manager:trader/register/
#
#
#
# @within function asset:trader/common/register

summon villager ~ ~ ~ {NoAI:1b,VillagerData:{level:99},Offers:{Recipes:[]},Tags:["Uninterferable","Npc","Trader","TraderInit"],Invulnerable:1b}
execute as @e[type=villager,tag=TraderInit,distance=..0.01,limit=1] run function asset_manager:trader/register/set_data