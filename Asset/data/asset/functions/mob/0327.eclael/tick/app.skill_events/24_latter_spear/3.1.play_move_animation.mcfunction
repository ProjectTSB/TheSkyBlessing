#> asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/3.1.play_move_animation
#
# アニメーションのイベントハンドラ 後半・突き アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/1.1.main_move

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/24_2_latter_attack_spear_hard/play
