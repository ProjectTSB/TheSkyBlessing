#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.5.play_attack_2_animation
#
# アニメーションのイベントハンドラ 後半・鞭コンボ アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/12_4_letter_warp_slash_2/play