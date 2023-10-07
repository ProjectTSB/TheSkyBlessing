#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.2.play_move2left_animation
#
# アニメーションのイベントハンドラ 後半・鞭コンボ アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/**

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/12_1_latter_warp_move_left/play