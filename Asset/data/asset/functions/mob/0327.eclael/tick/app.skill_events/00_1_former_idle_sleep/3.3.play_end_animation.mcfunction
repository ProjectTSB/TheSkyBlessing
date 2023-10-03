#> asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/3.3.play_end_animation
#
# アニメーションのイベントハンドラ 前半・居眠り アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/00_1_former_idle_sleep/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/0_3_former_idle_bikkuri/play
