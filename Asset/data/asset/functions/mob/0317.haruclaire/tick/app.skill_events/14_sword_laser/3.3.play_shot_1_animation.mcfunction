#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/3.3.play_shot_1_animation
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ アニメーション再生 射撃-2
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/15_03_sword_laser_shot_1/play