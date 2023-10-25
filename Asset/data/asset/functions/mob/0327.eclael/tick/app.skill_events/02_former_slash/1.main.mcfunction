#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main
#
# アニメーションのイベントハンドラ 前半・連続斬り
# 一気に近づいて連続で斬る．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 構え
# animated javaアニメーション再生 (長さ：31tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_0.play_start_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1 facing entity @p feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute if score @s 93.AnimationTimer matches 2..31 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 2..31 as @p run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 5 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 2..10 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 11..13 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 20..28 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 26..27 at @s run tp @s ~ ~0.4 ~
    execute if score @s 93.AnimationTimer matches 28..31 at @s run tp @s ~ ~0.1 ~
    execute if score @s 93.AnimationTimer matches 2..15 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
# 演出
    execute if score @s 93.AnimationTimer matches 26 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 26 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 26 run particle block sea_lantern ~ ~0.1 ~ 0.5 0 0.5 0.1 10

## 攻撃0
# animated javaアニメーション再生 (長さ：15tick)
    execute if score @s 93.AnimationTimer matches 32 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_1.play_slash_0_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 45..51 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 45..51 as @p run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 32..36 at @s positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 37..45 at @s positioned ^ ^ ^0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 33 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.1.attack_slash_0

## 攻撃1
# animated javaアニメーション再生 (長さ：15tick)
    execute if score @s 93.AnimationTimer matches 47 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_2.play_slash_1_animation
# 移動
    execute if score @s 93.AnimationTimer matches 47..51 at @s positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 52..60 at @s positioned ^ ^ ^0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 48 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.2.attack_slash_1

## 居合構え
# animated javaアニメーション再生 (長さ：26tick)
    execute if score @s 93.AnimationTimer matches 63 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_3.play_start_iai_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 63..83 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 63..83 as @p run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 63..73 at @s unless entity @a[distance=..3] positioned ^ ^ ^0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 63..65 at @s positioned ~ ~-0.4 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 66..68 at @s positioned ~ ~-0.1 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 63..68 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
# 演出
    execute if score @s 93.AnimationTimer matches 85 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 85 run particle electric_spark ^0.5 ^0.8 ^ 0 0 0 1 10
# 演出
    execute if score @s 93.AnimationTimer matches 63..68 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 63 run playsound block.grass.step hostile @a ~ ~ ~ 1 1

## 居合斬り
# animated javaアニメーション再生 (長さ：110tick)
    execute if score @s 93.AnimationTimer matches 90 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/3_4.play_iai_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 91 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.3.attack_slash_2
# 演出
    execute if score @s 93.AnimationTimer matches 93 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 139 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.4
    execute if score @s 93.AnimationTimer matches 139 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 139 run particle firework ^-1.5 ^0.3 ^-0.3 0 0 0 0.1 3
    execute if score @s 93.AnimationTimer matches 157 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.8
    execute if score @s 93.AnimationTimer matches 162 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.8
    execute if score @s 93.AnimationTimer matches 170 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2

# 終了
    execute if score @s 93.AnimationTimer matches 200.. run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/2.end
