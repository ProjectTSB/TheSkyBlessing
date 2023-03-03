#> asset:artifact/0822.sound_of_a_star/trigger/star/01.schedule
#
# 星のスケジュールループを回す場所
#
# @within function
#   asset:artifact/0822.sound_of_a_star/trigger/3.main
#   asset:artifact/0822.sound_of_a_star/trigger/star/02.main
#   asset:artifact/0822.sound_of_a_star/trigger/rejoin_process

# 処理
    execute if entity @e[type=marker,tag=MU.Star,limit=1] as @e[type=marker,tag=MU.Star] at @s run function asset:artifact/0822.sound_of_a_star/trigger/star/02.main