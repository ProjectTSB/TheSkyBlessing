#> asset:mob/0104.mad_scientist/tick/1.trigger
#
# Mobが生きている間毎tick実行されるfunction
#
# @within tag/function asset:mob/tick

execute if data storage asset:context {id:104} if entity @a[distance=..50] run function asset:mob/0104.mad_scientist/tick/2.tick