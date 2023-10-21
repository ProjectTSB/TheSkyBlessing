#> asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/1.3.main_2
#
# アニメーションのイベントハンドラ 後半・ガード
# プレイヤーの攻撃を受け止める．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：12tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/3.3.play_2_animation

# 移動
    execute if score @s 93.AnimationTimer matches 1 facing entity @p feet rotated ~ 0 positioned ^ ^ ^-0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 2..6 positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 7..12 positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 終了
    execute if score @s 93.AnimationTimer matches 13.. run function asset:mob/0327.eclael/tick/app.skill_events/25_latter_guard/2.end
