#> player_manager:adjust_hunger/respawn.delay
#
# 満腹度回復を与え、監視処理をセットします
#
# @within core:handler/respawn.delay

effect give @s saturation 20 0 true
tag @s add AdjustHunger
schedule function player_manager:adjust_hunger/observe 1t replace