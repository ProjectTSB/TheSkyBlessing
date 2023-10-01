#> asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/3_2.play_end_animation
#
# アニメーションのイベントハンドラ 前半・曲射 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/**

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/4_2_former_upper_shot_end/play