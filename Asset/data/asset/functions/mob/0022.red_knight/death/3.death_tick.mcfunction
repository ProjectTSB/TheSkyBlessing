#> asset:mob/0022.red_knight/death/3.death_tick
#
#
#
# @within  function
#   asset:mob/0022.red_knight/death/2.death
#   asset:mob/0022.red_knight/death/3.death_tick
#   asset:mob/0022.red_knight/rejoin_process

# メイン処理ファンクション
    execute as @e[type=snowball,tag=M.DeathAnimation] at @s run function asset:mob/0022.red_knight/death/4.death_animation

# ループ
    execute if entity @e[type=snowball,tag=M.DeathAnimation] run schedule function asset:mob/0022.red_knight/death/3.death_tick 1t