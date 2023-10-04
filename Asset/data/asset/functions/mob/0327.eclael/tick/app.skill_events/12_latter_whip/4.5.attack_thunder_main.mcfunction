#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.attack_thunder_main
#
# アニメーションのイベントハンドラ 後半・鞭コンボ 2段目攻撃判定
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.main

# 演出
    execute if score @s 93.AnimationTimer matches 230 positioned ^ ^ ^6 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 230 positioned ^ ^ ^6 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 235 positioned ^ ^ ^12 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 235 positioned ^ ^ ^12 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 240 positioned ^ ^ ^18 run playsound entity.lightning_bolt.thunder hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 240 positioned ^ ^ ^18 run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 0.7

# 攻撃発生
    execute if score @s 93.AnimationTimer matches 230 positioned ^-2 ^ ^6 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.1.attack_thunder_0
    execute if score @s 93.AnimationTimer matches 230 positioned ^2 ^ ^6 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.1.attack_thunder_0

    execute if score @s 93.AnimationTimer matches 235 positioned ^3.5 ^ ^12 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.2.attack_thunder_1
    execute if score @s 93.AnimationTimer matches 235 positioned ^ ^ ^12 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.2.attack_thunder_1
    execute if score @s 93.AnimationTimer matches 235 positioned ^-3.5 ^ ^12 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.2.attack_thunder_1

    execute if score @s 93.AnimationTimer matches 240 positioned ^5 ^ ^18 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.3.attack_thunder_2
    execute if score @s 93.AnimationTimer matches 240 positioned ^1.5 ^ ^18 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.3.attack_thunder_2
    execute if score @s 93.AnimationTimer matches 240 positioned ^-1.5 ^ ^18 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.3.attack_thunder_2
    execute if score @s 93.AnimationTimer matches 240 positioned ^-5 ^ ^18 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.3.attack_thunder_2