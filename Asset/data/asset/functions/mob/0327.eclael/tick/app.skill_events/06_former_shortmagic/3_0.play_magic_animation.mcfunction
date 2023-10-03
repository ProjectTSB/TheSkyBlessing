#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/3_0.play_magic_animation
#
# アニメーションのイベントハンドラ 前半・簡易魔法 アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/6_0_former_shortmagic/play