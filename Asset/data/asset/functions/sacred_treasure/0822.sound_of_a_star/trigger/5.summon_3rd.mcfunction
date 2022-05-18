#> asset:sacred_treasure/0822.sound_of_a_star/trigger/5.summon_3rd
#
# 3個目の星を召喚する
#
# @within function asset:sacred_treasure/0822.sound_of_a_star/trigger/3.main

# 3個目の星を召喚
    summon marker ~ ~ ~ {Tags:["MU.Star","MU.3","Projectile"]}
    scoreboard players operation @e[type=marker,tag=MU.Star,tag=MU.3,tag=!MU.Already,distance=..0.01,sort=nearest,limit=1] MU.UserID = @s UserID
    tp @e[type=marker,tag=MU.Star,tag=MU.3,tag=!MU.Already,distance=..0.01,sort=nearest,limit=1] ^-0.4 ^ ^0.5 ~ ~
    execute positioned ^-0.4 ^ ^0.5 run tag @e[type=marker,tag=MU.Star,tag=MU.3,tag=!MU.Already,distance=..0.01,sort=nearest,limit=1] add MU.Already