#> asset:artifact/0017.harmful_books/trigger/3.1.add_effect
#
# 効果の付与とParticle
#
# @within function asset:artifact/0017.harmful_books/trigger/3.main

execute if predicate lib:random_pass_per/40 run effect give @s slowness 30 5 true
execute if predicate lib:random_pass_per/40 run effect give @s weakness 300 10 true
execute if predicate lib:random_pass_per/20 run effect give @s levitation 10 3 true
execute if predicate lib:random_pass_per/10 run effect give @s wither 10 50 true
execute if predicate lib:random_pass_per/10 run effect give @s speed 10 255 true
execute if predicate lib:random_pass_per/10 run effect give @s poison 30 5 false
particle witch ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..10]