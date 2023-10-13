#> asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/3.2.play_attack_animation
#
# アニメーションのイベントハンドラ 後半・鞭コンボ アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/19_1_latter_attack_iai_1/play
