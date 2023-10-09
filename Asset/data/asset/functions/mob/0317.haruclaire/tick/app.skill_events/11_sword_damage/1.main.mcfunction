#> asset:mob/0317.haruclaire/tick/app.skill_events/11_sword_damage/1.main
#
# アニメーションのイベントハンドラ 剣モード・怯み
# プレイヤーの攻撃でひるみ，一瞬動きを止める．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：26tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/11_sword_damage/3.play_animation

# 移動
    execute if score @s 8T.AnimationTimer matches 1 facing entity @p feet rotated ~ 0 positioned ^ ^ ^-0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 2..10 positioned ^ ^ ^-0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport

# 終了
    execute if score @s 8T.AnimationTimer matches 36.. run function asset:mob/0317.haruclaire/tick/app.skill_events/11_sword_damage/2.end
