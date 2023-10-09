#> asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.1.attack
#
# アニメーションのイベントハンドラ 杖モード・レーザー 攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/1.main

# 演出
    particle dust 1 1000000000 1000000000 1 ~ ~ ~ 0.3 0.3 0.3 1 10 normal @a
    execute if predicate lib:random_pass_per/35 run particle snowflake ^ ^ ^ 0.1 0.1 0.1 0.1 1 normal @a
    execute if predicate lib:random_pass_per/35 run particle snowflake ^ ^ ^0.5 0.1 0.1 0.1 0.1 1 normal @a