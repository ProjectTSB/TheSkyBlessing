#> asset:mob/0213.terrible_scout_bomber/tick/common/get_obstacle
#
# @input
#    as: player
#    positioned: start point you want to check
#    rotate: angle you want to check
#
# @within asset:mob/0213.terrible_scout_bomber/tick/**

#> prv
# @private
    #declare tag 5X.BlockDetector

# init score
    scoreboard players set $5X.ExistObstacle Temporary 0

# init dummy entities
    summon marker 0.0 1.01 0.0 {Tags:["5X.BlockDetector"]}
    execute as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.01,z=0.0,limit=1] facing ^ ^ ^-1 run tp @s 0.0 1.01 0.0 ~ ~
    execute positioned 0.0 1.0 0.0 run tp 0-0-0-0-0 ~ ~ ~ ~ ~
    tag 0-0-0-0-0 add 5X.BlockDetector

# detect obstacles
    execute rotated as 0-0-0-0-0 positioned ^ ^ ^10 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^5.0 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^2.5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.25 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.625 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.3125 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.15625 unless block ~ ~ ~ #lib:no_collision run scoreboard players set $5X.ExistObstacle Temporary 1
    #execute rotated as 0-0-0-0-0 positioned ^ ^ ^10 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^5.0 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^2.5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.25 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.625 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.3125 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.15625 run particle happy_villager ~ ~ ~ 0 0 0 0 1 normal

# delete dummies
    tag 0-0-0-0-0 remove 5X.BlockDetector
    tp 0-0-0-0-0 0.0 0.0 0.0
    kill @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.01,z=0.0]