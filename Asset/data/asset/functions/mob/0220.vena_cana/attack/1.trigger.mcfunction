#> asset:mob/0220.vena_cana/attack/1.trigger
#
# Mobの攻撃時に実行されるfunction
#
# @within tag/function asset:mob/attack

execute if data storage asset:context {id:220} as @a[tag=Victim,distance=..6] at @s run function asset:mob/0220.vena_cana/attack/2.attack