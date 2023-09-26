#> asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/1.main
#
# アニメーションのイベントハンドラ 前半・待機
# その場でふよふよする．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：60tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/3.play_animation

# 終了
    execute if score @s 93.AnimationTimer matches 61.. run function asset:mob/0327.eclael/tick/app.skill_events/00_former_idle/2.end
