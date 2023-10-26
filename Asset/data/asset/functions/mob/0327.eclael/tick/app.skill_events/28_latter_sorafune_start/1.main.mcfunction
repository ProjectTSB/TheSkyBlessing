#> asset:mob/0327.eclael/tick/app.skill_events/28_latter_sorafune_start/1.main
#
# アニメーションのイベントハンドラ 後半・宙船・単発
# プレイヤーからみて左に回り込んだ後，宙船に遷移する．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 納刀
# animated javaアニメーション再生 (長さ：35tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/28_latter_sorafune_start/3.0.play_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..34 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..34 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 1..8 at @s positioned ^-0.5 ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 9..15 at @s positioned ^-0.3 ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 1..22 at @s positioned ^-0.1 ^ ^0.3 unless entity @a[distance=..5] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 16..22 at @s positioned ^-0.1 ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 1..15 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
# 演出
    execute if score @s 93.AnimationTimer matches 1..4 run playsound block.grass.step hostile @a ~ ~ ~ 1 0.7

# 終了
    execute if score @s 93.AnimationTimer matches 35.. run function asset:mob/0327.eclael/tick/app.skill_events/28_latter_sorafune_start/2.end
