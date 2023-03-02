#> asset:mob/0301.sinful_thoughts/player_process/1.loop
#
# スケジュールループするやつ
#
# @within function
#   asset:mob/0301.sinful_thoughts/**

# デバフの処理
    execute if entity @a[scores={8D.DebuffTime=1..}] as @a[scores={8D.DebuffTime=1..}] at @s run function asset:mob/0301.sinful_thoughts/player_process/2.main