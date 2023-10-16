#> asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/3.1.play_hard_animation
#
# アニメーションのイベントハンドラ 後半・宙船 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/1.1.main_hard

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/17_1_latter_spinslash_to_momiji/play
