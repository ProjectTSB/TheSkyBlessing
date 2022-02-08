#> asset:mob/0220.vena_cana/attack/03.schedule_loop
#
# スケジュールループをするよ
#
# @within function
#   asset:mob/0220.vena_cana/attack/2.attack
#   asset:mob/0220.vena_cana/attack/03.schedule_loop
#   asset:mob/0220.vena_cana/rejoin_process

# プレイヤー処理
    execute as @a[tag=64.ElementReduct] at @s run function asset:mob/0220.vena_cana/attack/04.player

# スケジュールループ
    execute if entity @a[tag=64.ElementReduct,limit=1] run schedule function asset:mob/0220.vena_cana/attack/03.schedule_loop 1t replace