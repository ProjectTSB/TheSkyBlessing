#> asset:mob/0120.convict/player_process/1.loop
#
# スケジュールループするやつ
#
# @within function
#   asset:mob/0120.convict/tick/3.slash/4.slash_attack2
#   asset:mob/0120.convict/player_process/2.main
#   asset:mob/0120.convict/rejoin_process

# デバフの処理
    execute if entity @a[scores={3C.DebuffTime=1..}] as @a[scores={3C.DebuffTime=1..}] at @s run function asset:mob/0120.convict/player_process/2.main