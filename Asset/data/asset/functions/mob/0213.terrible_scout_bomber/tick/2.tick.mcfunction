#> asset:mob/0213.terrible_scout_bomber/tick/2.tick
#
# Mobのtick時の処理
#
# ActionPhase
#   0: After summonning
#   1: Standby action
#   2: Selecting attack target
#   3: Gun
#   4: Rocket
#   5: Bomb
#   6: Kamikaze
#   7: Climb
#   8: In-flight refueling
#
# @within function asset:mob/0213.terrible_scout_bomber/tick/1.trigger

#> prv
# @private
    #declare score_holder $ActionDone

# init score
    execute store result score $PhaseTime Temporary run time query gametime
    scoreboard players operation $PhaseTime Temporary -= @s 5X.PhStartTime

#
    #tellraw @p [{"text":"phase_time "},{"score" : {"name":"$PhaseTime", "objective":"Temporary"}}]
    #tellraw @p [{"text":"ActionPhase "},{"score" : {"name":"@s", "objective":"5X.ActionPhase"}}]
    #tellraw @p [{"text":"PhStartTime "},{"score" : {"name":"@s", "objective":"5X.PhStartTime"}}]
    #tellraw @p [{"text":"TargetId "},{"score" : {"name":"@s", "objective":"5X.TargetId"}}]
    #tellraw @p [{"text":"UserID "},{"score" : {"name":"@p", "objective":"UserID"}}]

# execute a function according to the current phase
    execute if score @s 5X.ActionPhase matches 0 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/after_summon/
    execute if score @s 5X.ActionPhase matches 1 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/standby/
    execute if score @s 5X.ActionPhase matches 2 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/select_target/
    execute if score @s 5X.ActionPhase matches 3 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/gun/
    execute if score @s 5X.ActionPhase matches 4 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/rocket/
    execute if score @s 5X.ActionPhase matches 5 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/bomb/
    execute if score @s 5X.ActionPhase matches 6 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/kamikaze/
    execute if score @s 5X.ActionPhase matches 7 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/climb/
    execute if score @s 5X.ActionPhase matches 8 unless score $ActionDone Temporary matches 0.. store success score $ActionDone Temporary run function asset:mob/0213.terrible_scout_bomber/tick/in_flight_refuling/

# reset scores
    scoreboard players reset $PhaseTime Temporary
    scoreboard players reset $ActionDone Temporary