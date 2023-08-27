#> asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/1.main
#
# アニメーションのイベントハンドラ 剣モード・ワープ斬りコンボ
# ワープ後，プレイヤーに近づいて斬る攻撃を繰り返す．
# 斬り上げの後は，プレイヤーの眼前に現れて不意打ちする．
# 不意打ち後，攻撃を受けると怯む．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# カウンター初期化
    execute if score @s 8T.AnimationTimer matches 1 run scoreboard players set @s 8T.TempCount 0

## ワープ開始
# animated javaアニメーション再生 (長さ：30tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/3.1.play_start_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 10..20 at @s positioned ^ ^ ^-0.5 run tp @s ~ ~ ~ ~ ~
# 演出
    execute if score @s 8T.AnimationTimer matches 10 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 10 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 20 positioned ^ ^ ^-1 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/5.1.effect_teleport
    execute if score @s 8T.AnimationTimer matches 30 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.8
    execute if score @s 8T.AnimationTimer matches 30 run playsound item.trident.return hostile @a ~ ~ ~ 1 2
# プレイヤーの前方に移動
    execute if score @s 8T.AnimationTimer matches 30 at @r[distance=..25] rotated ~ 0 positioned ^ ^ ^0.1 facing entity @p feet rotated ~ 0 positioned ^ ^0.3 ^-12.5 run tp @s ~ ~ ~ ~ ~

## 斬撃
# カウンター増加
    execute if score @s 8T.AnimationTimer matches 31 run scoreboard players add @s 8T.TempCount 1
# animated javaアニメーション再生 (長さ：26tick)
    execute if score @s 8T.AnimationTimer matches 31 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/3.2.play_slash_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 31..41 at @s unless entity @a[distance=..1] positioned ^ ^ ^1 run tp @s ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 50..54 at @s positioned ^ ^ ^0.3 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 55..57 at @s positioned ^ ^ ^0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 50 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/4.1.attack_slash
# 軌跡
    execute if score @s 8T.AnimationTimer matches 31..41 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 57 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/5.1.effect_teleport
# プレイヤーの前方に移動
    execute if score @s 8T.AnimationTimer matches 57 at @r[distance=..25] rotated ~ 0 positioned ^ ^ ^0.1 facing entity @p feet rotated ~ 0 positioned ^ ^0.3 ^-12.5 run tp @s ~ ~ ~ ~ ~

## 一定確率で斬撃を繰り返す
    execute if score @s 8T.AnimationTimer matches 57 if score @s 8T.TempCount matches ..3 if predicate lib:random_pass_per/70 run scoreboard players set @s 8T.AnimationTimer 30

## 斬り上げ
# animated javaアニメーション再生 (長さ：26tick)
    execute if score @s 8T.AnimationTimer matches 58 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/3.3.play_upper_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 58..68 at @s unless entity @a[distance=..1] positioned ^ ^ ^1 run tp @s ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 77..81 at @s positioned ^ ^0.3 ^0.2 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 83..84 at @s positioned ^ ^0.1 ^0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 77 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/4.2.attack_upper
# 軌跡
    execute if score @s 8T.AnimationTimer matches 58..68 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 84 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/5.1.effect_teleport
# プレイヤーの目の前に移動
    execute if score @s 8T.AnimationTimer matches 84 at @p rotated ~ 0 positioned ^ ^2 ^1.5 facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

## 不意打ち
# animated javaアニメーション再生 (長さ：65tick)
    execute if score @s 8T.AnimationTimer matches 85 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/3.4.play_ambush_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 90..98 at @s rotated ~ 0 positioned ^ ^-0.2 ^0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 99..105 at @s rotated ~ 0 positioned ^ ^-0.1 ^0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 110..120 at @s rotated ~ 0 positioned ^ ^0.05 ^-0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 96 run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/4.3.attack_ambush
# 演出
    execute if score @s 8T.AnimationTimer matches 122 run playsound item.axe.wax_off hostile @a ~ ~ ~ 1 2

# 怯み受け付け
    execute if score @s 8T.AnimationTimer matches 100 run tag @s add 8T.Temp.NotArmor
    execute if score @s 8T.AnimationTimer matches 149 run tag @s remove 8T.Temp.NotArmor
    
# 終了
    execute if score @s 8T.AnimationTimer matches 150.. run function asset:mob/0317.haruclaire/tick/app.skill_events/13_sword_warp/2.end
