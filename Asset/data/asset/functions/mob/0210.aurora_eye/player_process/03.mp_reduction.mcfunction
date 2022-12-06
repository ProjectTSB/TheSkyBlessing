#> asset:mob/0210.aurora_eye/player_process/03.mp_reduction
#
# 最大MPの8%分減少させる
#
# @within function asset:mob/0210.aurora_eye/player_process/02.main

# MPを5%減らす
    execute store result storage asset:temp MP5Per double -0.05 run function lib:mp/get_max
    execute store result score $Fluctuation Lib run data get storage asset:temp MP5Per 1.0
    function lib:mp/fluctuation
    playsound block.beacon.power_select player @a ~ ~ ~ 0.2 2 0

# リセット
    data remove storage asset:temp MP5Per