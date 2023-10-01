#> asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/3_1.play_end_animation
#
# アニメーションのイベントハンドラ 前半・曲射・怯み アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/04_1_former_upper_damage/**

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/4_4_former_upper_damage_end/play