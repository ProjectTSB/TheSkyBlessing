#> asset:mob/0076.golden_watermelon_bomber/tick/1.trigger
#
# Mobが生きている間毎tick実行されるfunction
#
# @within tag/function asset:mob/tick

execute if data storage asset:context {id:76} if entity @a[gamemode=!spectator,distance=..30] run function asset:mob/0076.golden_watermelon_bomber/tick/2.tick