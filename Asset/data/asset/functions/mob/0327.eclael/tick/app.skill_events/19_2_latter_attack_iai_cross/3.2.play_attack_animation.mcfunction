#> asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/3.2.play_attack_animation
#
# アニメーションのイベントハンドラ 後半・鞭コンボ アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/19_3_latter_attack_iai_hard/play
