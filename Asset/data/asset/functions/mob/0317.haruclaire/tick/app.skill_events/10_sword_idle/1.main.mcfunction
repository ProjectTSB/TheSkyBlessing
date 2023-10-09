#> asset:mob/0317.haruclaire/tick/app.skill_events/10_sword_idle/1.main
#
# アニメーションのイベントハンドラ 剣モード・待機
# その場でふよふよする．たまに手癖で剣を投げる．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：41tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/10_sword_idle/3.play_animation

# 終了
    execute if score @s 8T.AnimationTimer matches 41.. run function asset:mob/0317.haruclaire/tick/app.skill_events/10_sword_idle/2.end
