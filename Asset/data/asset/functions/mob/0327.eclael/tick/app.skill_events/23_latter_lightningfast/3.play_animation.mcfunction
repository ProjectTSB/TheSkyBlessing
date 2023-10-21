#> asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/3.play_animation
#
# アニメーションのイベントハンドラ 後半・電光石火 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/23_latter_lightningfast/**

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/23_0_lightningfast/play
