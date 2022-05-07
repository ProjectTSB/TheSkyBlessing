#> asset:mob/0210.aurora_eye/player_process/03.mp_reduction
#
#
#
# @within function asset:mob/0210.aurora_eye/player_process/02.main

# MPを8%減らす
    execute store result storage asset:temp MP8Per double -0.08 run function lib:mp/get_max
    execute store result score $Fluctuation Lib run data get storage asset:temp MP8Per 1.0
    function lib:mp/fluctuation
    playsound block.beacon.power_select player @a ~ ~ ~ 0.2 2 0

# リセット
    data remove storage asset:temp MP4Per