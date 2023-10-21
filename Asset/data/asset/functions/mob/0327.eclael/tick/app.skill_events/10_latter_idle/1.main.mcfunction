#> asset:mob/0327.eclael/tick/app.skill_events/10_latter_idle/1.main
#
# アニメーションのイベントハンドラ 後半・待機
# その場でふよふよする．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：60tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/10_latter_idle/3.play_animation

# ガード受け付け
    execute if score @s 93.AnimationTimer matches 1 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.general/11.start_guard_prepare

# 終了
    execute if score @s 93.AnimationTimer matches 61.. run function asset:mob/0327.eclael/tick/app.skill_events/10_latter_idle/2.end
