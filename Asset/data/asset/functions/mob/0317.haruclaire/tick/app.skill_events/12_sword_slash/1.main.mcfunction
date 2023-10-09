#> asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/1.main
#
# アニメーションのイベントハンドラ 剣モード・斬撃コンボ
# プレイヤーに近づき，剣で斬る．
# 最後の回転斬り後に攻撃を受けると怯む．
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

## 突進
# animated javaアニメーション再生 (長さ：36tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.1.play_move_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..9 run tag @s add 8T.Temp.Me
    execute if score @s 8T.AnimationTimer matches 1..9 as @p run function asset:mob/0317.haruclaire/tick/app.general/1.rotate
    execute if score @s 8T.AnimationTimer matches 10..25 facing entity @p feet rotated ~ ~-1 run tp @s ~ ~ ~ ~ ~
# 移動
    execute if score @s 8T.AnimationTimer matches 8 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 20..35 at @s positioned ^ ^ ^0.8 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# ある程度プレイヤーに近づいた場合，攻撃モーションに移行
    execute if score @s 8T.AnimationTimer matches 20..35 positioned ^ ^ ^1.5 if entity @a[distance=..2] run scoreboard players set @s 8T.AnimationTimer 37
# 軌跡
    execute if score @s 8T.AnimationTimer matches 20..35 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## 突進斬り
# animated javaアニメーション再生 (長さ：41tick)
    execute if score @s 8T.AnimationTimer matches 37 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.2.play_move_to_slash_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 52..62 run tag @s add 8T.Temp.Me
    execute if score @s 8T.AnimationTimer matches 52..62 at @s as @p run function asset:mob/0317.haruclaire/tick/app.general/1.rotate
    execute if score @s 8T.AnimationTimer matches 63..72 facing entity @p feet rotated ~ ~-0.5 run tp @s ~ ~ ~ ~ ~
# 移動
    execute if score @s 8T.AnimationTimer matches 52 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 52 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 52..62 at @s positioned ^ ^ ^-0.3 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 68..77 at @s positioned ^ ^ ^1 unless entity @a[distance=..1.5] run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 39 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/4.1.attack_move_to_slash
# 軌跡
    execute if score @s 8T.AnimationTimer matches 68..77 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## 斬り上げ
# animated javaアニメーション再生 (長さ：21tick)
    execute if score @s 8T.AnimationTimer matches 78 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.3.play_upper_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 78..82 at @s rotated ~ 0 positioned ^ ^0.3 ^0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 83..90 at @s rotated ~ 0 positioned ^ ^0.1 ^0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 78..82 at @s positioned ^ ^ ^0.4 unless entity @a[distance=..1.5] run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 80 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/4.2.attack_upper
# 攻撃地点設置
    execute if score @s 8T.AnimationTimer matches 91 at @p run summon area_effect_cloud ^ ^ ^0.1 {CustomNameVisible:0b,Particle:"block air",Duration:10,Tags:["Object","8T.SkillEv.Sword.Laser.AttackPos"]}
    execute if score @s 8T.AnimationTimer matches 91 as @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
# 軌跡
    execute if score @s 8T.AnimationTimer matches 78..82 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 99 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/5.1.effect_teleport
# プレイヤーの目の前に移動
    execute if score @s 8T.AnimationTimer matches 99 at @e[type=area_effect_cloud,tag=8T.SkillEv.Sword.Laser.AttackPos,sort=nearest,limit=1] rotated ~ 0 positioned ^ ^2 ^-1.4 run tp @s ~ ~ ~ ~ ~

## 斬り下ろし
# animated javaアニメーション再生 (長さ：16tick)
    execute if score @s 8T.AnimationTimer matches 99 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.4.play_lower_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 99..103 at @s rotated ~ 0 positioned ^ ^-0.3 ^0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 104..111 at @s rotated ~ 0 positioned ^ ^-0.1 ^0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 101 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/4.3.attack_lower
# 軌跡
    execute if score @s 8T.AnimationTimer matches 99..103 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 116 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/5.1.effect_teleport
# 背後に移動
    execute if score @s 8T.AnimationTimer matches 116 facing entity @p feet positioned ^ ^2 ^-3 run tp @s ~ ~ ~ ~ ~

## 突進
# animated javaアニメーション再生 (長さ：36tick)
    execute if score @s 8T.AnimationTimer matches 117 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.1.play_move_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 118..126 run tag @s add 8T.Temp.Me
    execute if score @s 8T.AnimationTimer matches 118..126 as @p run function asset:mob/0317.haruclaire/tick/app.general/1.rotate
    execute if score @s 8T.AnimationTimer matches 127..142 facing entity @p feet rotated ~ ~-1 run tp @s ~ ~ ~ ~ ~
# 移動
    execute if score @s 8T.AnimationTimer matches 129 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 137..152 at @s positioned ^ ^ ^0.8 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# ある程度プレイヤーに近づいた場合，攻撃モーションに移行
    execute if score @s 8T.AnimationTimer matches 137..152 positioned ^ ^ ^1.5 if entity @a[distance=..2] run scoreboard players set @s 8T.AnimationTimer 153
# 軌跡
    execute if score @s 8T.AnimationTimer matches 137..152 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## 突進斬り
# animated javaアニメーション再生 (長さ：41tick)
    execute if score @s 8T.AnimationTimer matches 153 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.2.play_move_to_slash_animation
# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 168..180 run tag @s add 8T.Temp.Me
    execute if score @s 8T.AnimationTimer matches 168..180 at @s as @p run function asset:mob/0317.haruclaire/tick/app.general/1.rotate
    execute if score @s 8T.AnimationTimer matches 179..188 facing entity @p feet rotated ~ ~-0.5 run tp @s ~ ~ ~ ~ ~
# 移動
    execute if score @s 8T.AnimationTimer matches 168 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 168 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 168..178 at @s positioned ^ ^ ^-0.3 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 184..193 at @s positioned ^ ^ ^1 unless entity @a[distance=..1.5] run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 155 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/4.1.attack_move_to_slash
# 軌跡
    execute if score @s 8T.AnimationTimer matches 184..193 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## 斬り上げ
# animated javaアニメーション再生 (長さ：21tick)
    execute if score @s 8T.AnimationTimer matches 194 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.3.play_upper_animation
# 移動
    execute if score @s 8T.AnimationTimer matches 194..198 at @s rotated ~ 0 positioned ^ ^0.3 ^0.1 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 199..206 at @s rotated ~ 0 positioned ^ ^0.1 ^0.05 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 194..198 at @s positioned ^ ^ ^0.4 unless entity @a[distance=..1.5] run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 攻撃
    execute if score @s 8T.AnimationTimer matches 196 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/4.2.attack_upper
# 軌跡
    execute if score @s 8T.AnimationTimer matches 194..198 positioned ~ ~1 ~ run particle firework ~ ~ ~ 0 0 0 0.05 1

## ワープ
# 演出
    execute if score @s 8T.AnimationTimer matches 215 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/5.1.effect_teleport
# プレイヤーの目の前に移動
    execute if score @s 8T.AnimationTimer matches 215 at @p rotated ~ 0 positioned ^ ^0.5 ^1.5 facing entity @p eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~

## 回転斬り
# animated javaアニメーション再生 (長さ：55tick)
    execute if score @s 8T.AnimationTimer matches 215 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/3.5.play_spin_animation
# 攻撃
    execute if score @s 8T.AnimationTimer matches 230 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/4.4.attack_spin
# 演出
    execute if score @s 8T.AnimationTimer matches 233 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.9
# 怯み受け付け
    execute if score @s 8T.AnimationTimer matches 242 run tag @s add 8T.Temp.NotArmor
    execute if score @s 8T.AnimationTimer matches 269 run tag @s remove 8T.Temp.NotArmor
# 終了
    execute if score @s 8T.AnimationTimer matches 270.. run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/2.end
