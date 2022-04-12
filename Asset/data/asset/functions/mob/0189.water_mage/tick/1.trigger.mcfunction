#> asset:mob/0189.water_mage/tick/1.trigger
#
# Mobが生きている間毎tick実行されるfunction
#
# @within tag/function asset:mob/tick

execute if data storage asset:context {id:189} if entity @p[gamemode=!spectator,distance=..30] run function asset:mob/0189.water_mage/tick/2.tick