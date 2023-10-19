#> asset:mob/0327.eclael/tick/app.skill_events/24_1_latter_spear_damage/3_0.play_start_animation
#
# アニメーションのイベントハンドラ 前半・居合斬り・怯み アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_1_latter_spear_damage/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/24_1_latter_attack_spear_damage/play