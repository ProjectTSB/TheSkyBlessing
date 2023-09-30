#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_3.play_start_iai_animation
#
# アニメーションのイベントハンドラ 前半・連続斬り アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/2_3_former_slash_2_start/play