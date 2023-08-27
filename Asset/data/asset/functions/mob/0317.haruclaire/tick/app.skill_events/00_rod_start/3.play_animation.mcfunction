#> asset:mob/0317.haruclaire/tick/app.skill_events/00_rod_start/3.play_animation
#
# アニメーションのイベントハンドラ 杖モード・待機 アニメーション再生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/00_rod_start/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/00_01_start/play