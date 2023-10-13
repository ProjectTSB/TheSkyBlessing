#> asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/3.1.play_near_animation
#
# アニメーションのイベントハンドラ 後半・鞭コンボ アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/1.1.main_near

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/18_1_latter_attack_moveslash_near/play
