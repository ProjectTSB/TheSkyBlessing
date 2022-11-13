#> asset:mob/0078.messenger_of_thunder/attack/1.trigger
#
# Mobの攻撃時に実行されるfunction
#
# @within tag/function asset:mob/attack

execute if data storage asset:context {id:78} at @p[tag=Victim,distance=..50] run function asset:mob/0078.messenger_of_thunder/attack/2.attack