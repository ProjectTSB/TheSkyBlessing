#> asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main
#
# アニメーションのイベントハンドラ 前半・居合斬り
# 一気に近づいて居合斬りする．
# 直近1秒以内に攻撃を受けていない+刀を抜く直前にダメージを受けると怯む．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 構え
# animated javaアニメーション再生 (長さ：35tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/3_0.play_start_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..35 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..35 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 20 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 1..10 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport

## 余韻
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 36..44 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 36..44 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate

# プレイヤーがある程度近くにいる場合はそのまま攻撃に移行
    execute if score @s 93.AnimationTimer matches 44 if entity @a[tag=!PlayerShouldInvulnerable,distance=..14] run scoreboard players set @s 93.AnimationTimer 61

## 移動
# animated javaアニメーション再生 (長さ：18tick)
    execute if score @s 93.AnimationTimer matches 44 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/3_1.play_move_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 44..60 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 44..60 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 44 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 44 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 44..51 at @s unless entity @a[distance=..3] positioned ^ ^ ^1.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 52..58 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.6 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 44..58 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude

## 攻撃
# animated javaアニメーション再生 (長さ：76tick)
    execute if score @s 93.AnimationTimer matches 61 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/3_2.play_attack_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 61..67 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 61..67 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 61..68 at @s unless entity @a[distance=..3] positioned ^ ^ ^1.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 69..70 at @s unless entity @a[distance=..2] positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 71..75 at @s positioned ^ ^ ^0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 81..85 at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 61..70 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
# 攻撃
    execute if score @s 93.AnimationTimer matches 73 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.1.attack_iai_0
    execute if score @s 93.AnimationTimer matches 78 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.2.attack_iai_1
# 演出
    execute if score @s 93.AnimationTimer matches 67 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 67 run particle electric_spark ^0.6 ^0.8 ^ 0 0 0 1 10
    execute if score @s 93.AnimationTimer matches 61 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 61 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 61 at @s run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.1.particle_move
    execute if score @s 93.AnimationTimer matches 103 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
# 刀を抜く直前に攻撃を受けると怯む
# ただし，直近に攻撃を受けていない場合のみ
    execute if score @s 93.AnimationTimer matches 67 if score @s 93.DamageIntervalTimer matches ..0 run tag @s add 93.Temp.NotArmor
    execute if score @s 93.AnimationTimer matches 71 run tag @s remove 93.Temp.NotArmor

# 終了
    execute if score @s 93.AnimationTimer matches 137.. run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/2.end
