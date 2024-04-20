#> debug:tps/watch
#
#
#
# @api

#> Temp
# @private
    #declare score_holder $MilliSecond

execute store result score $MilliSecond Temporary in the_end run worldborder get

execute if score $AwaitTime Global <= $MilliSecond Temporary run function debug:tps/init
execute if score $AwaitTime Global <= $MilliSecond Temporary as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.05 2

execute if score $AwaitTime Global > $MilliSecond Temporary run function debug:tps/watch