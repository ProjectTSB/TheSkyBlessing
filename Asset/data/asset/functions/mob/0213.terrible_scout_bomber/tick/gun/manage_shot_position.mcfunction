#> asset:mob/0213.terrible_scout_bomber/tick/gun/manage_shot_position
#
# @input
#    as: area_effect_cloud
#    at: @s
#
# @within asset:mob/0213.terrible_scout_bomber/tick/gun/

#> prv
# @private
    #declare tag 5X.Particle
    #declare tag 5X.Shot
    #declare tag 5X.BlockDetector


# set tag
    execute if entity @s[nbt={Age:0}] run tag @s add 5X.Particle
    execute if entity @s[nbt={Age:6}] run tag @s add 5X.Shot

# init dummy entities
    execute if entity @s[tag=5X.Particle] run summon marker 0.0 1.01 0.0 {Tags:["5X.BlockDetector","5X.Dummy"]}
    execute if entity @s[tag=5X.Particle] positioned 0.0 1.0 0.0 run tp 0-0-0-0-0 ~ ~ ~ ~ ~
    execute if entity @s[tag=5X.Particle] run tag 0-0-0-0-0 add 5X.BlockDetector

# particle
    execute if entity @s[tag=5X.Particle] at @e[tag=this,distance=..30,limit=1] positioned ^ ^3.3 ^1 facing entity @s eyes run tp 0-0-0-0-0 0.0 1.0 0.0 ~ ~
    execute if entity @s[tag=5X.Particle] rotated as 0-0-0-0-0 facing ^ ^ ^-1 run tp @e[type=marker,tag=5X.Dummy,distance=..0.1,x=0.0,y=1.01,z=0.0] 0.0 1.0 0.0 ~ ~
    execute if entity @s[tag=5X.Particle] at @e[tag=this,distance=..30,limit=1] positioned ^ ^3.3 ^1 anchored eyes rotated as 0-0-0-0-0 positioned ^ ^ ^15 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^7.5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^3.75 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.25 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.875 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.9375 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.46875 rotated as 0-0-0-0-0 positioned ^ ^ ^30 if entity @s[distance=..30] positioned ^ ^ ^-30 run particle dust 0.5 0 0 1 ~ ~ ~ 0 0 0 0 1 normal

# manage
    execute if entity @s[tag=5X.Shot] run playsound entity.firework_rocket.blast_far hostile @a[distance=..30] ~ ~ ~ 2 2 1
    execute if entity @s[tag=5X.Shot] run particle explosion ~ ~ ~ 0 0 0 0 1 normal

# reset
    execute if entity @s[tag=5X.Particle] run tag 0-0-0-0-0 remove 5X.BlockDetector
    execute if entity @s[tag=5X.Particle] run tp 0-0-0-0-0 0.0 0.0 0.0
    execute if entity @s[tag=5X.Particle] run kill @e[type=marker,tag=5X.Dummy,distance=..0.1,x=0.0,y=1.01,z=0.0]
    tag @s[tag=5X.Particle] remove 5X.Particle
    tag @s[tag=5X.Shot] remove 5X.Shot
