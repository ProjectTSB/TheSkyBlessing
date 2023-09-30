#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_4.play_iai_animation
#
# アニメーションのイベントハンドラ 前半・連続斬り アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/2_4_former_slash_2/play