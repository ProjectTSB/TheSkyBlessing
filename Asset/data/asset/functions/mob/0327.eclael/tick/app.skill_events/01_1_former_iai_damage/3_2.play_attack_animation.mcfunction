#> asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/3_2.play_attack_animation
#
# アニメーションのイベントハンドラ 前半・待機 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/1_2_former_iai_attack/play