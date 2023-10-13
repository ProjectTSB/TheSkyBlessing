#> asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/1.main
#
# アニメーションのイベントハンドラ 後半・居合斬り
# 納刀後，敵の眼前に移動して抜刀斬りで攻撃する．
# 抜刀直前に攻撃を受けると怯む．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 納刀
# animated javaアニメーション再生 (長さ：34tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/3.0.play_start_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..30 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..30 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 演出
    execute if score @s 93.AnimationTimer matches 5 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 10 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 23 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 34 at @r[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 34 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 35 run function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 35 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^10 ^2 ^12 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 35 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 38 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-12 ^6 ^8 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 38 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 41 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^0.2 ^7 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 41 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 攻撃
# animated javaアニメーション再生 (長さ：94tick)
    execute if score @s 93.AnimationTimer matches 42 run function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/3.2.play_attack_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 42..47 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 42..47 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 70..78 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 70..78 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 52..59 at @s unless entity @a[distance=..4] positioned ^ ^ ^1.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 60..61 at @s unless entity @a[distance=..4] positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 62..66 at @s positioned ^ ^ ^0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 83..89 at @s positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 64 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.1.attack_iai_0
    execute if score @s 93.AnimationTimer matches 69 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.2.attack_iai_1
    execute if score @s 93.AnimationTimer matches 86 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.3.attack_slash_2
# 演出
    execute if score @s 93.AnimationTimer matches 58 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 58 run particle electric_spark ^0.6 ^0.8 ^ 0 0 0 1 10
    execute if score @s 93.AnimationTimer matches 52 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 52 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 52 at @s run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.1.particle_move
    execute if score @s 93.AnimationTimer matches 65 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 89 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.7

# 終了
    execute if score @s 93.AnimationTimer matches 136.. run function asset:mob/0327.eclael/tick/app.skill_events/19_latter_attack_iai/2.end
