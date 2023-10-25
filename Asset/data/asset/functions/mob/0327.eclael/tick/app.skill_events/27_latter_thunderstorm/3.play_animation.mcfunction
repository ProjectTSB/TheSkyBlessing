#> asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/3.play_animation
#
# アニメーションのイベントハンドラ 後半・待機 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/27_latter_thunderstorm/1.main

# 再生する
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/27_0_latter_thunderstorm/play
