#> asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/1.main
#
# アニメーションのイベントハンドラ 後半・七連斬り
# 高速移動を繰り返しながら敵を7回斬る．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 予備動作
# animated javaアニメーション再生 (長さ：50tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.0.play_start_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..50 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..50 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 39..43 at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 44..48 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 3 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 18 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 29 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 41 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 43 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 43 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 51 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 51 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^11 ^2 ^12 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 51 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 54 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-6 ^6 ^8 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 54 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 57 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^2 ^ ^2 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 57 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 攻撃1
# animated javaアニメーション再生 (長さ：13tick)
    execute if score @s 93.AnimationTimer matches 58 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.2.play_slash_0_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 59 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.1.attack_slash_0
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 63 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 63 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 71 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 71 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^11 ^8 ^10 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 71 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 74 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-6 ^4 ^8 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 74 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 77 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-1 ^ ^1 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 77 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 攻撃2
# animated javaアニメーション再生 (長さ：13tick)
    execute if score @s 93.AnimationTimer matches 77 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.3.play_slash_1_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 78 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.2.attack_slash_1
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 82 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 82 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 90 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 90 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-2 ^1 ^10 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 90 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 93 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^4 ^11 ^3 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 93 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 96 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^1 ^1 ^-1 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 96 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 攻撃3
# animated javaアニメーション再生 (長さ：13tick)
    execute if score @s 93.AnimationTimer matches 96 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.2.play_slash_0_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 97 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.1.attack_slash_0
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 109 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 109 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 109 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 109 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^6 ^8 ^10 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 109 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 112 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-12 ^6 ^8 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 112 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 115 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^4 ^3 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 115 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 115 at @s run tp @s ~ ~-4 ~ ~ ~

## 攻撃4
# animated javaアニメーション再生 (長さ：25tick)
    execute if score @s 93.AnimationTimer matches 115 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.4.play_slash_2_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 126 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.3.attack_slash_2
    execute if score @s 93.AnimationTimer matches 129 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
# 移動
    execute if score @s 93.AnimationTimer matches 115..118 at @s positioned ^ ^0.5 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 122..126 at @s positioned ^ ^-1 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 140 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 140 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 140 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 140 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-4 ^8 ^6 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 140 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 143 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^ ^8 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 143 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 納刀
# animated javaアニメーション再生 (長さ：60tick)
    execute if score @s 93.AnimationTimer matches 143 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.5.play_move_animation
# 移動
    execute if score @s 93.AnimationTimer matches 143..153 at @s positioned ^ ^ ^-0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 154..158 at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 181 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 205 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 205 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 205 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned as @s facing entity @e[type=wither_skeleton,tag=93.Temp.Me,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^ ~ 0
    execute if score @s 93.AnimationTimer matches 205 run tag @s remove 93.Temp.Me

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 207 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 207 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^3 ^8 ^6 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 207 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 210 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^ ^2 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 210 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 居合斬り1
# animated javaアニメーション再生 (長さ：18tick)
    execute if score @s 93.AnimationTimer matches 210 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.6.play_iai_0_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 216 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 221 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.2.attack_slash_1
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 226 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:18,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 226 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 228 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 228 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-7 ^12 ^6 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 228 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 231 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^8 ^5 ^3 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 231 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 234 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-5 ^0.2 ^ facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 234 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 居合斬り2
# animated javaアニメーション再生 (長さ：72tick)
    execute if score @s 93.AnimationTimer matches 234 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/3.7.play_iai_1_animation
# 攻撃
    execute if score @s 93.AnimationTimer matches 243 run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.4.attack_slash_3
    execute if score @s 93.AnimationTimer matches 245 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 290 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.4
    execute if score @s 93.AnimationTimer matches 290 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 1.2
# 移動
    execute if score @s 93.AnimationTimer matches 234..238 at @s positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 終了
    execute if score @s 93.AnimationTimer matches 306.. run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/2.end
