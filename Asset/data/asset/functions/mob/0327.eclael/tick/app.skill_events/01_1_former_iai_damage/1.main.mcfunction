#> asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/1.main
#
# アニメーションのイベントハンドラ 前半・居合斬り・怯み
# 居合斬りの怯みモーション．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 怯み
# animated javaアニメーション再生 (長さ：70tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/3_0.play_start_animation
# 移動
    execute if score @s 93.AnimationTimer matches 45 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 1..4 at @s positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 5..10 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 11..15 at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 30..35 at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 36..45 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 終了
    execute if score @s 93.AnimationTimer matches 71.. run function asset:mob/0327.eclael/tick/app.skill_events/01_1_former_iai_damage/2.end
