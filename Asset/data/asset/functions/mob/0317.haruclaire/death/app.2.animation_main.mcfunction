#> asset:mob/0317.haruclaire/death/app.2.animation_main
#
# Mobの死亡時に実行されるfunction
#
# @within function asset:mob/0317.haruclaire/death/app.1.animation_schedule_loop

# タイマー増加
    scoreboard players add @s 8T.AnimationTimer 1

# 討伐アニメーション再生(80 tick)
    execute if score @s 8T.AnimationTimer matches 1 run function animated_java:haruclaire/animations/pause_all
    execute if score @s 8T.AnimationTimer matches 1 run function animated_java:haruclaire/animations/18_01_death/play

# 移動
    execute if score @s 8T.AnimationTimer matches 1..10 unless block ~ ~-1 ~ #lib:no_collision run tp @s ~ ~0.1 ~

# 効果音
    execute if score @s 8T.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.7
    execute if score @s 8T.AnimationTimer matches 10 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
    execute if score @s 8T.AnimationTimer matches 24 run playsound item.armor.equip_diamond hostile @a ~ ~ ~ 1 0.7
    execute if score @s 8T.AnimationTimer matches 29 run playsound item.armor.equip_diamond hostile @a ~ ~ ~ 1 0.7

# 演出
    execute if score @s 8T.AnimationTimer matches 45 positioned ~0.4 ~-1.5 ~0.4 run function asset:mob/0317.haruclaire/death/app.3.summon_ice
    execute if score @s 8T.AnimationTimer matches 50 positioned ~0.3 ~-1.4 ~-0.2 run function asset:mob/0317.haruclaire/death/app.3.summon_ice
    execute if score @s 8T.AnimationTimer matches 52 positioned ~-0.4 ~-1 ~0.2 run function asset:mob/0317.haruclaire/death/app.3.summon_ice
    execute if score @s 8T.AnimationTimer matches 54 positioned ~-0.3 ~-0.9 ~-0.1 run function asset:mob/0317.haruclaire/death/app.3.summon_ice
    execute if score @s 8T.AnimationTimer matches 56 positioned ~0.2 ~-0.8 ~0.1 run function asset:mob/0317.haruclaire/death/app.3.summon_ice
    execute if score @s 8T.AnimationTimer matches 58 positioned ~-0.1 ~-0.9 ~-0.2 run function asset:mob/0317.haruclaire/death/app.3.summon_ice
    execute if score @s 8T.AnimationTimer matches 60 positioned ~0.1 ~-1.1 ~0 run function asset:mob/0317.haruclaire/death/app.3.summon_ice
    execute if score @s 8T.AnimationTimer matches 80 at @s run function asset:mob/0317.haruclaire/death/app.4.summon_ice_large

# 終了
    execute if score @s 8T.AnimationTimer matches 130 run function asset:mob/0317.haruclaire/death/app.5.kill_ice
    execute if score @s 8T.AnimationTimer matches 130.. run function animated_java:haruclaire/remove/this
