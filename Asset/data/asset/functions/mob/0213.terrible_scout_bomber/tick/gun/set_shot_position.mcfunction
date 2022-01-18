#> asset:mob/0213.terrible_scout_bomber/tick/gun/set_shot_position
#
# @input
#    as: player
#    at: @e[tag=this]
#
# @within asset:mob/0213.terrible_scout_bomber/tick/gun/

#> prv
# @private
    #declare tag 5X.GunTarget
    #declare score_holder $5X.Random

# get rand
    execute store result score $5X.Random Temporary run function lib:random/

# set AEC
    execute if score $5X.Random Temporary matches 0..16383 at @s run summon area_effect_cloud ^ ^ ^ {Tags:["5X.GunShotPosition"],Duration:8,WaitTime:0,Particle:"minecraft:block air"}
    execute if score $5X.Random Temporary matches 16384..32767 at @s run summon area_effect_cloud ^ ^ ^1 {Tags:["5X.GunShotPosition"],Duration:8,WaitTime:0,Particle:"minecraft:block air"}
    execute if score $5X.Random Temporary matches 32768..49151 at @s run summon area_effect_cloud ^1 ^ ^ {Tags:["5X.GunShotPosition"],Duration:8,WaitTime:0,Particle:"minecraft:block air"}
    execute if score $5X.Random Temporary matches 49152..65535 at @s run summon area_effect_cloud ^-1 ^ ^ {Tags:["5X.GunShotPosition"],Duration:8,WaitTime:0,Particle:"minecraft:block air"}

# reset
    scoreboard players reset $5X.Random Temporary
