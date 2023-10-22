#> asset:mob/0327.eclael/tick/app.skill_events/26_latter_start/3.play_animation
#
# アニメーションのイベントハンドラ 後半・抜刀 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/26_latter_start/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/26_0_phase_change/play
