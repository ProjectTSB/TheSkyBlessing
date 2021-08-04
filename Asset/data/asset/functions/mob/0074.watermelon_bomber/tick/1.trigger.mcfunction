#> asset:mob/0074.watermelon_bomber/tick/1.trigger
#
# Mobが生きている間毎tick実行されるfunction
#
# @within tag/function asset:mob/tick

execute if data storage asset:context {id:74} if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run function asset:mob/0074.watermelon_bomber/tick/2.tick