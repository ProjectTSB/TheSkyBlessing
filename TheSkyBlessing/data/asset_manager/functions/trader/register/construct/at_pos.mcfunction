#> asset_manager:trader/register/construct/at_pos
#
#
#
# @within function asset_manager:trader/register/construct/m

summon villager ~ ~ ~ {NoAI:1b,VillagerData:{level:99},Offers:{Recipes:[]},Tags:["Uninterferable","Npc","Trader","TraderInit"],Invulnerable:1b}
execute as @e[type=villager,tag=TraderInit,distance=..0.01,limit=1] run function asset_manager:trader/register/construct/set_data
