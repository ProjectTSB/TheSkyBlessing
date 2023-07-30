#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.2.attack_laser_particle
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ レーザー判定
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.1.attack_laser

# 演出
    particle end_rod ^ ^ ^ 0 0 0 0.05 1 normal @a
    particle dust 1 1000000000 1000000000 1 ~ ~ ~ 0.2 0.2 0.2 1 20 normal @a
    execute if predicate lib:random_pass_per/35 run particle snowflake ^ ^ ^ 0.1 0.1 0.1 0.1 1 normal @a
    execute if predicate lib:random_pass_per/35 run particle snowflake ^ ^ ^0.5 0.1 0.1 0.1 0.1 1 normal @a