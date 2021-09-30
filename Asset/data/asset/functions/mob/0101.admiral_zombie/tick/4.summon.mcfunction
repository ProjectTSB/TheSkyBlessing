#> asset:mob/0101.admiral_zombie/tick/4.summon
#
#
#
# @within function asset:mob/0101.admiral_zombie/tick/3.check_zombie_count



    execute rotated ~ 0 positioned ^ ^ ^3 if block ~ ~ ~ #lib:no_collision run function asset:mob/0101.admiral_zombie/tick/5.summon_zombie
    execute rotated ~ 0 positioned ^-2.598 ^ ^-1.5 if block ~ ~ ~ #lib:no_collision run function asset:mob/0101.admiral_zombie/tick/5.summon_zombie
    execute rotated ~ 0 positioned ^2.598 ^ ^-1.5 if block ~ ~ ~ #lib:no_collision run function asset:mob/0101.admiral_zombie/tick/5.summon_zombie
