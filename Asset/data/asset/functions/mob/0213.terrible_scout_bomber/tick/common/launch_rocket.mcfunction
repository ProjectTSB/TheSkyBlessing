#> asset:mob/0213.terrible_scout_bomber/tick/common/launch_rocket
#
# @input
#   as: launcher
#   positioned: launch point
#   rotated: launch angle
#   score: 5X.TargetId
#
# @within function asset:mob/0213.terrible_scout_bomber/tick/rocket/

#> prv
# @private
    #declare tag 5X.RocketInit
    #declare score_holder $5X.TargetDetect

# init dummy
    #execute as @a[distance=..100] if score @s UserID = @e[tag=this,distance=..1.01,limit=1] 5X.TargetId facing entity @s eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1 store success score $5X.TargetDetect Temporary run tp 0-0-0-0-0 ~ ~ ~
    execute positioned 0.0 0.0 0.0 positioned ^ ^ ^1 store success score $5X.TargetDetect Temporary run tp 0-0-0-0-0 ~ ~ ~

# summon rocket
    execute if score $5X.TargetDetect Temporary matches 1.. run summon firework_rocket ~ ~ ~ {LifeTime:40,ShotAtAngle:1b,Motion:[0.0,0.0,0.0],Tags:["5X.RocketInit"],FireworksItem:{id:"firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Type:4b,Colors:[I;12855079]},{Type:4b,Colors:[I;12478511]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]},{Type:4b,Colors:[I;0]}]}}}}

# set motion
    data modify entity @e[tag=5X.RocketInit,distance=..0.1,limit=1] Motion set from entity 0-0-0-0-0 Pos

# reset 
    tag @e[tag=5X.RocketInit,distance=..0.1,limit=1] remove 5X.RocketInit
    tp 0-0-0-0-0 0.0 0.0 0.0
    scoreboard players reset $5X.TargetDetect Temporary