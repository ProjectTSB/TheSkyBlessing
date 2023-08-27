#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/3.5.play_slash_finish_animation
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ アニメーション再生 射撃-3
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/15_05_sword_laser_slash_finish/play