#> asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/3_2.play_slash_animation
#
# アニメーションのイベントハンドラ 前半・射撃 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/**

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/14_0_latter_moveshot_1/play