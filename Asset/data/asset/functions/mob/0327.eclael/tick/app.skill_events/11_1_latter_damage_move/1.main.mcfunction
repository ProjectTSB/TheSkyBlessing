#> asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/1.main
#
# アニメーションのイベントハンドラ 後半・怯み
# 怯みをキャンセルし，バク転して距離を取る．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：45tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/3.play_animation

# ダメージ軽減
    execute if score @s 93.AnimationTimer matches 1 run effect give @s resistance infinite 7 true

# 移動
    execute if score @s 93.AnimationTimer matches 1..8 at @s positioned ^ ^ ^-0.7 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 9..13 at @s positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 14..20 at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 21..34 at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1

# ダメージ軽減終了
    execute if score @s 93.AnimationTimer matches 45 run effect clear @s resistance

# 終了
    execute if score @s 93.AnimationTimer matches 46.. run function asset:mob/0327.eclael/tick/app.skill_events/11_1_latter_damage_move/2.end
