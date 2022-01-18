#> asset:mob/0213.terrible_scout_bomber/tick/select_target/is_attackable
#
# @input
#    as: player
#    at: @s
# @output
#    tag: @s 5X.Attackable
#    tag: @s 5X.RocketLaunchable
#    tag: @s 5X.Bombable
#
# @within asset:mob/0213.terrible_scout_bomber/tick/select_target/

#> prv
# @private
    #declare tag 5X.BlockDetector

# init dummy entities
    summon marker 0.0 1.01 0.0 {Tags:["5X.BlockDetector","5X.Dummy"]}
    execute positioned 0.0 1.0 0.0 run tp 0-0-0-0-0 ~ ~ ~ ~ ~
    tag 0-0-0-0-0 add 5X.BlockDetector

# init score
    scoreboard players set $5X.ExistObstacle Temporary 0

# check whether launchable rocket or not
    #check 20 blocks on the bomber's attack path
        execute rotated ~ 0 positioned ^ ^ ^20 positioned ~ ~5 ~ facing entity @s eyes facing ^ ^ ^-1 run tp 0-0-0-0-0 0.0 1.0 0.0 ~ ~
        execute rotated as 0-0-0-0-0 facing ^ ^ ^-1 run tp @e[type=marker,tag=5X.Dummy,distance=..0.1,x=0.0,y=1.01,z=0.0] 0.0 1.0 0.0 ~ ~
        execute anchored eyes rotated as 0-0-0-0-0 positioned ^ ^ ^10 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^2.5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.25 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.625 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.3125 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.15625 unless block ~ ~ ~ #lib:no_collision run scoreboard players set $5X.ExistObstacle Temporary 1
    #check 8 blocks on the bomber's attack path
        execute rotated ~180 -30 run tp 0-0-0-0-0 0.0 1.0 0.0 ~ ~
        execute rotated as 0-0-0-0-0 facing ^ ^ ^-1 run tp @e[type=marker,tag=5X.Dummy,distance=..0.1,x=0.0,y=1.01,z=0.0] 0.0 1.0 0.0 ~ ~
        execute rotated ~ 0 positioned ^ ^ ^5 anchored eyes rotated as 0-0-0-0-0 positioned ^ ^ ^4 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^2 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision run scoreboard players set $5X.ExistObstacle Temporary 1

    execute if score $5X.ExistObstacle Temporary matches 0 run tag @s add 5X.RocketLaunchable
    execute if score $5X.ExistObstacle Temporary matches 0 run tag @s[tag=!5X.Attackable] add 5X.Attackable

# init score
    scoreboard players set $5X.ExistObstacle Temporary 0

# check whether bombable or not
    # check 16 blocks above the player
        execute rotated ~ -90 run tp 0-0-0-0-0 0.0 1.0 0.0 ~ ~
        execute rotated as 0-0-0-0-0 facing ^ ^ ^-1 run tp @e[type=marker,tag=5X.Dummy,distance=..0.1,x=0.0,y=1.01,z=0.0] 0.0 1.0 0.0 ~ ~
        execute anchored eyes rotated as 0-0-0-0-0 positioned ^ ^ ^8 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^4 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^2 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision run scoreboard players set $5X.ExistObstacle Temporary 1
    #check 20 blocks on the bomber's path
        execute rotated ~90 0 run tp 0-0-0-0-0 0.0 1.0 0.0 ~ ~
        execute rotated as 0-0-0-0-0 facing ^ ^ ^-1 run tp @e[type=marker,tag=5X.Dummy,distance=..0.1,x=0.0,y=1.01,z=0.0] 0.0 1.0 0.0 ~ ~
        execute positioned ~ ~10 ~ anchored eyes rotated as 0-0-0-0-0 positioned ^ ^ ^10 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^2.5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1.25 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.625 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.3125 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.15625 unless block ~ ~ ~ #lib:no_collision run scoreboard players set $5X.ExistObstacle Temporary 1
    
    execute if score $5X.ExistObstacle Temporary matches 0 run tag @s add 5X.Bombable
    execute if score $5X.ExistObstacle Temporary matches 0 run tag @s[tag=!5X.Attackable] add 5X.Attackable

# init score
    scoreboard players set $5X.ExistObstacle Temporary 0

# check whether shootable gun or not
    #check 16 blocks on the bomber's attack path
        execute rotated ~ 0 positioned ^ ^ ^16 positioned ~ ~2 ~ facing entity @s eyes facing ^ ^ ^-1 run tp 0-0-0-0-0 0.0 1.0 0.0 ~ ~
        execute rotated as 0-0-0-0-0 facing ^ ^ ^-1 run tp @e[type=marker,tag=5X.Dummy,distance=..0.1,x=0.0,y=1.01,z=0.0] 0.0 1.0 0.0 ~ ~
        execute anchored eyes rotated as 0-0-0-0-0 positioned ^ ^ ^8 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^4 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^2 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^1 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.5 rotated as @e[type=marker,tag=5X.BlockDetector,distance=..0.1,x=0.0,y=1.0,z=0.0,sort=furthest,limit=2] positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision run scoreboard players set $5X.ExistObstacle Temporary 1

    execute if score $5X.ExistObstacle Temporary matches 0 run tag @s add 5X.Shootable
    execute if score $5X.ExistObstacle Temporary matches 0 run tag @s[tag=!5X.Attackable] add 5X.Attackable

# delete dummies
    tag 0-0-0-0-0 remove 5X.BlockDetector
    tp 0-0-0-0-0 0.0 0.0 0.0
    kill @e[type=marker,tag=5X.Dummy,distance=..0.1,x=0.0,y=1.01,z=0.0]