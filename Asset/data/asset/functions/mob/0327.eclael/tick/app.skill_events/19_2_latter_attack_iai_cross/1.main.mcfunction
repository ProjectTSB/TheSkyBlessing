#> asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/1.main
#
# アニメーションのイベントハンドラ 後半・居合斬り
# 納刀後，敵の眼前に移動して抜刀斬りで攻撃する．
# 抜刀直前に攻撃を受けると怯む．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 納刀
# animated javaアニメーション再生 (長さ：34tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/3.0.play_start_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..34 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..34 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 演出
    execute if score @s 93.AnimationTimer matches 5 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 10 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 23 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 34 at @r[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 34 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0
# 敵がある程度近い場合は即座に攻撃する
    execute if score @s 93.AnimationTimer matches 34 if entity @a[distance=..12] run scoreboard players set @s 93.AnimationTimer 42

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 35 run function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 35 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^10 ^2 ^12 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 35 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 38 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-12 ^6 ^8 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 38 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 41 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^0.2 ^10 facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 41 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 攻撃
# animated javaアニメーション再生 (長さ：70tick)
    execute if score @s 93.AnimationTimer matches 42 run function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/3.2.play_attack_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 42..47 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 42..47 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 52..59 at @s unless entity @a[distance=..4] positioned ^ ^ ^1.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 60..61 at @s unless entity @a[distance=..4] positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 62..66 at @s positioned ^ ^ ^0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 52..61 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
# 攻撃
    execute if score @s 93.AnimationTimer matches 64 run function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 69 run function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/4.2.attack_slash_1
# 演出
    execute if score @s 93.AnimationTimer matches 58 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 58 run particle electric_spark ^0.6 ^0.8 ^ 0 0 0 1 10
    execute if score @s 93.AnimationTimer matches 52 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 52 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 64 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 67 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 72 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
# 刀を抜く直前に攻撃を受けると怯む
# ただし，直近に攻撃を受けていない場合のみ
    execute if score @s 93.AnimationTimer matches 58 if score @s 93.DamageIntervalTimer matches ..0 run tag @s add 93.Temp.NotArmor
    execute if score @s 93.AnimationTimer matches 62 run tag @s remove 93.Temp.NotArmor

# ガード受け付け
    execute if score @s 93.AnimationTimer matches 99 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.general/11.start_guard_prepare

# 追撃
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 79 rotated ~30 ~ positioned ^ ^ ^10 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 79 rotated ~90 ~ positioned ^ ^ ^10 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 79 rotated ~150 ~ positioned ^ ^ ^10 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 79 rotated ~210 ~ positioned ^ ^ ^10 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 79 rotated ~270 ~ positioned ^ ^ ^10 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 79 rotated ~330 ~ positioned ^ ^ ^10 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack

# 終了
    execute if score @s 93.AnimationTimer matches 113.. run function asset:mob/0327.eclael/tick/app.skill_events/19_2_latter_attack_iai_cross/2.end
