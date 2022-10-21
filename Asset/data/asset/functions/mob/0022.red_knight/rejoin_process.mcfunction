#> asset:mob/0022.red_knight/rejoin_process
#
# リジョイン時処理
#
# @within tag/function asset:rejoin
    execute if entity @e[type=snowball,tag=M.DeathAnimation] run schedule function asset:mob/0022.red_knight/death/3.death_tick 1t
