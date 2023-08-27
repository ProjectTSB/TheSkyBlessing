#> asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/1.main
#
# アニメーションのイベントハンドラ 杖モード・レーザー
# 杖を突きだし敵を狙う．
# 一定時間後に複数ヒットするレーザーを発射する．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

## ロックオン
# animated javaアニメーション再生 (ロックオン 長さ：36tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/3.1.play_lockon_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..4 at @s facing entity @p feet run tp @s ~ ~0.3 ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 5..12 at @s facing entity @p feet run tp @s ~ ~0.1 ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 13..25 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
# 予兆演出
    execute if score @s 8T.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 12..36 rotated ~ 0 positioned ^ ^1 ^1.7 rotated as @s run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/4.particle_aim

## 発動
# animated javaアニメーション再生 (発射 長さ：91tick)
    execute if score @s 8T.AnimationTimer matches 37 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/3.2.play_attack_animation
    execute if score @s 8T.AnimationTimer matches 37 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1.5 2
    execute if score @s 8T.AnimationTimer matches 37 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1.5 1.8
# 反動
    execute if score @s 8T.AnimationTimer matches 37..42 at @s run tp @s ^ ^ ^-0.3
    execute if score @s 8T.AnimationTimer matches 43..53 at @s run tp @s ^ ^ ^-0.05
# 攻撃
    execute if score @s 8T.AnimationTimer matches 37 rotated ~ 0 positioned ^ ^1 ^1.7 run particle snowflake ~ ~ ~ 0 0 0 1 20
    execute if score @s 8T.AnimationTimer matches 37..93 rotated ~ 0 positioned ^ ^1 ^1.7 rotated as @s run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.1.attack
    execute if score @s 8T.AnimationTimer matches 37..73 run playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 2 2
# 演出
    execute if score @s 8T.AnimationTimer matches 37 rotated ~ 0 positioned ^ ^1 ^1.7 run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/5.6.particle_start_laser
# 発射終了
    execute if score @s 8T.AnimationTimer matches 94 rotated ~ 0 positioned ^ ^1 ^1.7 run particle flash ~ ~ ~ 0 0 0 0 3
    execute if score @s 8T.AnimationTimer matches 94 run playsound block.large_amethyst_bud.break hostile @a ~ ~ ~ 1.5 2
    execute if score @s 8T.AnimationTimer matches 94 run playsound block.large_amethyst_bud.break hostile @a ~ ~ ~ 1.5 1.8
    execute if score @s 8T.AnimationTimer matches 94..95 at @s run tp @s ^ ^0.3 ^-0.2 ~ 0
    execute if score @s 8T.AnimationTimer matches 96..98 at @s run tp @s ^ ^0.08 ^-0.2 ~ 0
    execute if score @s 8T.AnimationTimer matches 99..115 at @s run tp @s ^ ^-0.2 ^-0.05 ~ 0
# 終了
    execute if score @s 8T.AnimationTimer matches 128.. run function asset:mob/0317.haruclaire/tick/app.skill_events/04_rod_laser/2.end
