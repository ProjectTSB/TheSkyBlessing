#> asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/3_1.play_upper_start_animation
#
# アニメーションのイベントハンドラ 前半・射撃 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/21_1_latter_attack_magic_1/play