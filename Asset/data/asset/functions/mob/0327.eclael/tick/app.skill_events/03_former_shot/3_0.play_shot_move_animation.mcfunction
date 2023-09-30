#> asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/3_0.play_shot_move_animation
#
# アニメーションのイベントハンドラ 前半・射撃 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/3_0_former_shot_move/play