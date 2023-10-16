#> asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/1.main
#
# アニメーションのイベントハンドラ 後半・移動射撃
# 距離を取って弓で撃つ．宙船・紅葉舞に繋がる．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 移動射撃
# animated javaアニメーション再生 (長さ：80tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/3_0.play_shot_move_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..80 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..80 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 1..14 at @s positioned ^ ^0.1 ^-0.4 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 15..22 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 66..72 at @s positioned ^ ^0.2 ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5
    execute if score @s 93.AnimationTimer matches 13 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 2 1.3
# 攻撃
    execute if score @s 93.AnimationTimer matches 35 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 40 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/4.1.attack_shot
    execute if score @s 93.AnimationTimer matches 45 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:6,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 50 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/4.1.attack_shot
# 移動方向決定
    execute if score @s 93.AnimationTimer matches 79 if predicate lib:random_pass_per/50 run tag @s add 93.Temp.MoveToLeft
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 80 at @r[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:40,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 80 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 81 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/3_1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 81 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^10 ^6 ^12 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 81 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 84 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-12 ^3 ^8 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 84 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 87 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^6 ^0.2 ^4 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 87 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 斬撃
# animated javaアニメーション再生 (長さ：26tick)
    execute if score @s 93.AnimationTimer matches 88 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/3_2.play_slash_animation
# 攻撃地点更新
    execute if score @s 93.AnimationTimer matches 113 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @s positioned as @p run tp @s ^ ^ ^ ~ 0
# 移動
    execute if score @s 93.AnimationTimer matches 95..99 at @s positioned ^ ^ ^0.3 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 100..103 at @s positioned ^ ^ ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 99 at @s run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/4.2.attack_slash

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 115 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/3_1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 115 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^8 ^4 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 115 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 118 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-4 ^0.2 ^7 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 118 if predicate api:global_vars/difficulty/min/hard at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-4 ^0.2 ^4 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 118 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
# 終了
    execute if score @s 93.AnimationTimer matches 119.. run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/2.end
