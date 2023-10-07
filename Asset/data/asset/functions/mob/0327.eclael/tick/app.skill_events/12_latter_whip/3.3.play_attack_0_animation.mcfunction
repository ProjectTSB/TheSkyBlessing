#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.3.play_attack_0_animation
#
# アニメーションのイベントハンドラ 後半・鞭コンボ アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/**

# 移動アニメーション再生停止
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/pause_all
# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/12_2_latter_warp_slash_0/play