#> asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/1.main
#
# アニメーションのイベントハンドラ 前半・居合斬り・怯み アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/1_3_former_iai_damage/play