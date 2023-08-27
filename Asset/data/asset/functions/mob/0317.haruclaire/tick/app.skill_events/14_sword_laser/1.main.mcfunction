#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ
# レーザーと剣を組み合わせた攻撃を行う．
# 最後の斬撃の回避後に攻撃を受けると怯む．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

## 射撃-1
# animated javaアニメーション再生 (長さ：58tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/3.1.play_shot_0_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..4 at @s facing entity @p feet run tp @s ^ ^ ^-0.1 ~ ~
    execute if score @s 8T.AnimationTimer matches 13..36 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
# 反動
    execute if score @s 8T.AnimationTimer matches 45..48 at @s positioned ^ ^0.15 ^-0.2 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 49..58 at @s positioned ^ ^ ^-0.08 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 45 rotated ~ 0 positioned ^ ^1 ^1.7 rotated as @s run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.1.attack_laser

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 59 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/5.1.effect_teleport
# プレイヤーの目の前に移動
    execute if score @s 8T.AnimationTimer matches 59 at @p rotated ~ 0 positioned ^ ^0.2 ^2.5 facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

## 斬撃-1
# animated javaアニメーション再生 (長さ：31tick)
    execute if score @s 8T.AnimationTimer matches 59 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/3.2.play_slash_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 59..62 at @s positioned ^ ^ ^-0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 68..73 at @s positioned ^ ^ ^0.4 unless entity @a[distance=..1.5] run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 79..84 at @s positioned ^ ^ ^0.4 unless entity @a[distance=..1.5] run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 72 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.2.attack_slash
    execute if score @s 8T.AnimationTimer matches 83 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.2.attack_slash
    execute if score @s 8T.AnimationTimer matches 72 positioned ^ ^ ^1.5 positioned ~ ~1 ~ rotated ~90 30 positioned ^ ^ ^0.5 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/5.2.effect_slash
    execute if score @s 8T.AnimationTimer matches 83 positioned ^ ^ ^1.5 positioned ~ ~1 ~ rotated ~90 -45 positioned ^ ^ ^0.5 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/5.2.effect_slash

## 射撃-2
# animated javaアニメーション再生 (長さ：25tick)
    execute if score @s 8T.AnimationTimer matches 90 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/3.3.play_shot_1_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 90 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 90 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 90 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 90..94 at @s positioned ^ ^ ^-0.7 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 95..98 at @s positioned ^ ^ ^-0.3 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 反動
    execute if score @s 8T.AnimationTimer matches 105..108 at @s positioned ^ ^0.15 ^-0.2 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 109..115 at @s positioned ^ ^-0.03 ^-0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 104 rotated ~ 0 positioned ^ ^1 ^1.7 rotated as @s run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.1.attack_laser
# 軌跡
    execute if score @s 8T.AnimationTimer matches 90..98 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 115 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/5.1.effect_teleport
#  上空に移動
    execute if score @s 8T.AnimationTimer matches 115 facing entity @p eyes positioned as @p positioned ^ ^ ^-8 run tp @s ~ ~4 ~ ~ ~

## 交差射撃
# animated javaアニメーション再生 (長さ：20tick)
    execute if score @s 8T.AnimationTimer matches 116 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/3.4.play_shot_2_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 116..125 at @s facing entity @p feet run tp @s ~ ~0.05 ~ ~ ~
# 攻撃地点設置
    execute if score @s 8T.AnimationTimer matches 125 at @p facing entity @s feet positioned ^ ^ ^4.5 run summon area_effect_cloud ^ ^1 ^ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","8T.SkillEv.Sword.Laser.AttackPos"]}
# 攻撃
    execute if score @s 8T.AnimationTimer matches 130 rotated ~ 0 positioned ^4 ^2 ^ facing entity @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] feet run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.1.attack_laser
    execute if score @s 8T.AnimationTimer matches 130 rotated ~ 0 positioned ^-4 ^2 ^ facing entity @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] feet run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.1.attack_laser

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 137 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/5.1.effect_teleport
#  プレイヤーの目の前に移動
    execute if score @s 8T.AnimationTimer matches 137 at @p rotated ~ 0 positioned ^ ^0.2 ^2.5 facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

## 斬撃-2
# animated javaアニメーション再生 (長さ：76tick)
    execute if score @s 8T.AnimationTimer matches 137 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/3.5.play_slash_finish_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 147..151 at @s rotated ~ 0 positioned ^ ^0.3 ^0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 152..159 at @s rotated ~ 0 positioned ^ ^0.1 ^0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 147..151 at @s positioned ^ ^ ^0.4 unless entity @a[distance=..1.5] run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 148 rotated ~ 0 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.3.attack_slash_finish
# 終了移動
    execute if score @s 8T.AnimationTimer matches 172 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 172 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 172..182 at @s rotated ~ 0 positioned ^ ^0.1 ^-0.3 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 183..192 at @s rotated ~ 0 positioned ^ ^-0.08 ^-0.25 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 193..203 at @s rotated ~ 0 positioned ^ ^-0.2 ^-0.18 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 204..213 at @s rotated ~ 0 positioned ^ ^-0.05 ^-0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport

# 怯み受け付け
    execute if score @s 8T.AnimationTimer matches 193 run tag @s add 8T.Temp.NotArmor
    execute if score @s 8T.AnimationTimer matches 213 run tag @s remove 8T.Temp.NotArmor
# 終了
    execute if score @s 8T.AnimationTimer matches 214.. run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/2.end
