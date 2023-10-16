#> asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/3.play_animation
#
# アニメーションのイベントハンドラ 後半・怯み アニメーション再生
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/1.main

# 再生
    execute as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/11_2_latter_damage_2/play

# 終了
    tag @s remove 93.Temp.Me
