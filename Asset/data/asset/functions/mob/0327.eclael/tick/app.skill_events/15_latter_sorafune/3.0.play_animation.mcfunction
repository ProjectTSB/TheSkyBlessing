#> asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/3.0.play_animation
#
# アニメーションのイベントハンドラ 後半・宙船 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/15_0_sorafune/play
