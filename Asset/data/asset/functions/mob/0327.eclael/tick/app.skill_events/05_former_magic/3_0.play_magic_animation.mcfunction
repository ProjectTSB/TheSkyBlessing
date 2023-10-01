#> asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/3_0.play_magic_animation
#
# アニメーションのイベントハンドラ 前半・魔法 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/5_0_former_magic/play