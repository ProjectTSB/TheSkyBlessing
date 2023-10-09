#> asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/3.2.play_attack_animation
#
# アニメーションのイベントハンドラ 杖モード・待機 アニメーション再生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/04_02_rod_laser_shot/play
