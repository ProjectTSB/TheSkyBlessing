#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.1.main_mirror
#
# アニメーションのイベントハンドラ 後半・長剣
# 左右に振りながら剣を伸ばして攻撃する．
# ワープ方向逆バージョン．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 左右ワープ
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..100 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..100 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
## 右
# animated javaアニメーション再生 (長さ：20tick)
    execute if score @s 93.AnimationTimer matches 35 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.2.play_move2left_animation
# 移動
    execute if score @s 93.AnimationTimer matches 40 at @s positioned ^-6 ^ ^6 run tp @s ~ ~ ~ ~ ~
    execute if score @s 93.AnimationTimer matches 40 run function asset:mob/0327.eclael/tick/app.general/8.teleport_effect
    execute if score @s 93.AnimationTimer matches 45..50 at @s positioned ^-0.3 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
## 左
# animated javaアニメーション再生 (長さ：20tick)
    execute if score @s 93.AnimationTimer matches 55 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.1.play_move2right_animation
# 移動
    execute if score @s 93.AnimationTimer matches 60 at @s positioned ^13.5 ^-0.5 ^8 run tp @s ~ ~ ~ ~ ~
    execute if score @s 93.AnimationTimer matches 60 run function asset:mob/0327.eclael/tick/app.general/8.teleport_effect
    execute if score @s 93.AnimationTimer matches 65..70 at @s positioned ^0.3 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
## 右
# animated javaアニメーション再生 (長さ：20tick)
    execute if score @s 93.AnimationTimer matches 75 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.2.play_move2left_animation
# 移動
    execute if score @s 93.AnimationTimer matches 80 at @s positioned ^-15 ^-0.5 ^8 run tp @s ~ ~ ~ ~ ~
    execute if score @s 93.AnimationTimer matches 80 run function asset:mob/0327.eclael/tick/app.general/8.teleport_effect
    execute if score @s 93.AnimationTimer matches 85..90 at @s positioned ^-0.3 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
## 左
# animated javaアニメーション再生 (長さ：20tick)
    execute if score @s 93.AnimationTimer matches 95 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.1.play_move2right_animation
# 移動
    execute if score @s 93.AnimationTimer matches 100 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-2 ^ ^7 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute if score @s 93.AnimationTimer matches 100 run function asset:mob/0327.eclael/tick/app.general/8.teleport_effect
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 95 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:10,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 95 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^-1 ^ ^ ~ 0

## 攻撃1
# animated javaアニメーション再生 (長さ：25 + 10tick)
    execute if score @s 93.AnimationTimer matches 105 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.3.play_attack_0_animation
# 難易度ハードの場合，予備動作を無くす
    execute if score @s 93.AnimationTimer matches 105 if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 93.AnimationTimer 110
# 一瞬停止
    execute if score @s 93.AnimationTimer matches 105 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/pause_all
    execute if score @s 93.AnimationTimer matches 110 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/12_2_latter_warp_slash_0/resume
# 攻撃
    execute if score @s 93.AnimationTimer matches 114 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 116 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 126 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.2.attack_slash_1
    execute if score @s 93.AnimationTimer matches 128 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 135 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:10,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 135 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0
# 移動
# ハードの場合，分かりにくい位置に移動
    execute if score @s 93.AnimationTimer matches 140 if predicate api:global_vars/difficulty/max/normal at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-6 ^ ^ facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~0.3 ~ ~ ~
    execute if score @s 93.AnimationTimer matches 140 if predicate api:global_vars/difficulty/min/hard at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^6 ^ ^ facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~0.3 ~ ~ ~
    execute if score @s 93.AnimationTimer matches 140 run function asset:mob/0327.eclael/tick/app.general/8.teleport_effect

## 攻撃2
# animated javaアニメーション再生 (長さ：42 + 20tick)
    execute if score @s 93.AnimationTimer matches 140 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.4.play_attack_1_animation
# ハードの場合，予備動作を無くす
    execute if score @s 93.AnimationTimer matches 140 if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 93.AnimationTimer 160
# 一瞬停止
    execute if score @s 93.AnimationTimer matches 140 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/pause_all
    execute if score @s 93.AnimationTimer matches 160 as @e[type=item_display,tag=93.ModelRoot.Target,sort=nearest,limit=1] run function animated_java:eclael/animations/12_3_latter_warp_slash_1/resume
# 攻撃
    execute if score @s 93.AnimationTimer matches 164 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.3.attack_slash_2
    execute if score @s 93.AnimationTimer matches 166 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 183 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 185 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 193 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.2.attack_slash_1
    execute if score @s 93.AnimationTimer matches 195 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
# 移動
    execute if score @s 93.AnimationTimer matches 164..170 at @s positioned ^ ^ ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 171..175 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 197 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:10,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 197 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0
# 移動
    execute if score @s 93.AnimationTimer matches 201 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^ ^7 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute if score @s 93.AnimationTimer matches 201 run function asset:mob/0327.eclael/tick/app.general/8.teleport_effect

## 攻撃3
# animated javaアニメーション再生 (長さ：75tick)
    execute if score @s 93.AnimationTimer matches 202 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/3.5.play_attack_2_animation
# 移動
    execute if score @s 93.AnimationTimer matches 202..205 at @s positioned ^ ^0.3 ^0.5 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 217..220 at @s positioned ^ ^-0.3 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 252..257 at @s positioned ^ ^0.1 ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃  
    execute if score @s 93.AnimationTimer matches 220 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.4.attack_slash_3
    execute if score @s 93.AnimationTimer matches 223 run playsound item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute if score @s 93.AnimationTimer matches 230 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.attack_thunder_main
    execute if score @s 93.AnimationTimer matches 235 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.attack_thunder_main
    execute if score @s 93.AnimationTimer matches 240 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.5.attack_thunder_main

# 怯み受け付け
    execute if score @s 93.AnimationTimer matches 240 run tag @s add 93.Temp.NotArmor
    execute if score @s 93.AnimationTimer matches 276 run tag @s remove 93.Temp.NotArmor

# 終了
    execute if score @s 93.AnimationTimer matches 277.. run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/2.end
