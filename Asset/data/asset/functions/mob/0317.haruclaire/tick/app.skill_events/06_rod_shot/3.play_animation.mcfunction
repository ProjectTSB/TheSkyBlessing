#> asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/3.play_animation
#
# アニメーションのイベントハンドラ杖モード・射撃 アニメーション再生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/06_01_rod_shot_magic/play
