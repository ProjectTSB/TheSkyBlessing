#> asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/3.0.play_animation
#
# アニメーションのイベントハンドラ 後半・鞭コンボ アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/24_0_latter_attack_spear/play
