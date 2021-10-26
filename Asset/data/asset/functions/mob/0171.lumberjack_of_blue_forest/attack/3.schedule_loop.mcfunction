#> asset:mob/0171.lumberjack_of_blue_forest/attack/3.schedule_loop
#
#
#
# @within function
#   asset:mob/0171.lumberjack_of_blue_forest/attack/2.attack
#   asset:mob/0171.lumberjack_of_blue_forest/attack/3.schedule_loop
#   asset:mob/0171.lumberjack_of_blue_forest/rejoin_process

# スコア減少
    execute as @a[tag=4R.HealthDown] at @s run function asset:mob/0171.lumberjack_of_blue_forest/attack/4.attribute_effect_time

# スケジュールループ
    execute if entity @a[tag=4R.HealthDown,limit=1] run schedule function asset:mob/0171.lumberjack_of_blue_forest/attack/3.schedule_loop 1t replace