#> asset:mob/0213.terrible_scout_bomber/tick/2.tick
#
# Mobのtick時の処理
#
# ActionPhase
#   0: After summonning
#   1: Standby action
#   2: Selecting attack target
#   3: Move to attack position
#   4: Gun
#   5: Rocket
#   6: Bomb
#   7: Kamikaze
#   8: Climb
#
# @within function asset:mob/0213.terrible_scout_bomber/tick/1.trigger

# get time since beginning of the current phase
    execute store result score $phase_time Temporary run time query gametime
    scoreboard players operation $phase_time Temporary -= @s 5X.PhStartTime

# execute a function according to the current phase
    execute if score @s 5X.ActionPhase matches 0 run function asset:mob/0213.terrible_scout_bomber/tick/after_summon/
    execute if score @s 5X.ActionPhase matches 1 run function asset:mob/0213.terrible_scout_bomber/tick/standby/
    execute if score @s 5X.ActionPhase matches 2 run function asset:mob/0213.terrible_scout_bomber/tick/select_target/
    execute if score @s 5X.ActionPhase matches 3 run function asset:mob/0213.terrible_scout_bomber/tick/move_to_position/
    execute if score @s 5X.ActionPhase matches 4 run function asset:mob/0213.terrible_scout_bomber/tick/gun/
    execute if score @s 5X.ActionPhase matches 5 run function asset:mob/0213.terrible_scout_bomber/tick/rocket/
    execute if score @s 5X.ActionPhase matches 6 run function asset:mob/0213.terrible_scout_bomber/tick/bomb/
    execute if score @s 5X.ActionPhase matches 7 run function asset:mob/0213.terrible_scout_bomber/tick/kamikaze/
    execute if score @s 5X.ActionPhase matches 8 run function asset:mob/0213.terrible_scout_bomber/tick/climb/

# reset scores
    scoreboard players reset $phase_time Temporary