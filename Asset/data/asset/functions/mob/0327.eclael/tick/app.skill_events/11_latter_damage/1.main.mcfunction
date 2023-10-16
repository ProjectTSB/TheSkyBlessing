#> asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/1.main
#
# アニメーションのイベントハンドラ 後半・怯み
# プレイヤーの攻撃で怯み，一瞬動きを止める．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：25tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/3.play_animation

# 移動
    execute if score @s 93.AnimationTimer matches 1 facing entity @p feet rotated ~ 0 positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 2..10 positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 終了
    execute if score @s 93.AnimationTimer matches 26.. run function asset:mob/0327.eclael/tick/app.skill_events/11_latter_damage/2.end
