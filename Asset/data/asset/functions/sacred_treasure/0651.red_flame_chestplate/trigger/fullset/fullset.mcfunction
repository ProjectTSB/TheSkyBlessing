#> asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/fullset
#
#
#
# @within function asset:sacred_treasure/0651.red_flame_chestplate/trigger/3.main

# tag付与
    tag @s add I3.Fullset

# 演出
    particle dust 1 0.533 0 1 ~ ~0.3 ~ 2 2 2 0 500 force @a
    particle dust 1 0 0 1 ~ ~-.3 ~ 2 2 2 0 500 force @a
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0
    playsound block.end_portal.spawn master @a ~ ~ ~ 1 1
    playsound entity.wither.death master @a ~ ~ ~ 1 1.5
    execute rotated ~ 0 positioned ~ ~0.2 ~ run function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/particle2

# Schedule
    schedule function asset:sacred_treasure/0651.red_flame_chestplate/trigger/fullset/schedule_loop 1t replace