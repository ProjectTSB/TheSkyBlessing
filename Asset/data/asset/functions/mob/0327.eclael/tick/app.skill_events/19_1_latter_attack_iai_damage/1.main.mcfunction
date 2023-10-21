#> asset:mob/0327.eclael/tick/app.skill_events/19_1_latter_attack_iai_damage/1.main
#
# アニメーションのイベントハンドラ 後半・居合斬り・怯み
# 居合斬りの怯みモーション．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 怯み
# animated javaアニメーション再生 (長さ：50tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/19_1_latter_attack_iai_damage/3_0.play_start_animation
# 移動
    execute if score @s 93.AnimationTimer matches 1..4 at @s positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 5..10 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 11..15 at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 41..50 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 怯み受け付け
    execute if score @s 93.AnimationTimer matches 5 run tag @s add 93.Temp.NotArmor
    execute if score @s 93.AnimationTimer matches 50 run tag @s remove 93.Temp.NotArmor

# 終了
    execute if score @s 93.AnimationTimer matches 51.. run function asset:mob/0327.eclael/tick/app.skill_events/19_1_latter_attack_iai_damage/2.end
