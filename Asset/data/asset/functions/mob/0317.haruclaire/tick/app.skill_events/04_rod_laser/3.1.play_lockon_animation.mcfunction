#> asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/3.1.play_lockon_animation
#
# アニメーションのイベントハンドラ杖モード・レーザー アニメーション再生 ロックオン
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/04_01_rod_laser_pre/play
