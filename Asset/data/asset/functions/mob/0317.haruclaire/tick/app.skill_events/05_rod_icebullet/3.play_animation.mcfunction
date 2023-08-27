#> asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/3.play_animation
#
# アニメーションのイベントハンドラ杖モード・あられ アニメーション再生
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/1.main

# 再生
    execute as @e[type=item_display,tag=8T.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:haruclaire/animations/05_01_rod_set_magic/play
