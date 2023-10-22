#> asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/3_0.play_shot_move_animation
#
# アニメーションのイベントハンドラ 前半・射撃 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/20_3_latter_attack_shot_hard/play