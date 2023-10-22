#> asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/1.main
#
# アニメーションのイベントハンドラ 前半・射撃
# 距離を取って弓で撃つ．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 射撃
# animated javaアニメーション再生 (長さ：110tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/3_0.play_shot_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..60 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..60 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 1..5 at @s positioned ^ ^0.4 ^-0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 6..14 at @s positioned ^ ^0.1 ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 21..60 at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 61..64 at @s positioned ^ ^ ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 61..80 at @s positioned ^ ^-0.05 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 81..90 at @s positioned ^ ^-0.2 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 91..100 at @s positioned ^ ^-0.1 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5
    execute if score @s 93.AnimationTimer matches 10 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 1 1.3
    execute if score @s 93.AnimationTimer matches 98 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
# 攻撃
    execute if score @s 93.AnimationTimer matches 21 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:41,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 26 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run tp @s ~ ~1 ~ ~ 0
    execute if score @s 93.AnimationTimer matches 38 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run tp @s ~ ~1 ~ ~ 0
    execute if score @s 93.AnimationTimer matches 57 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run tp @s ~ ~1 ~ ~ 0
    execute if score @s 93.AnimationTimer matches 25 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/4.1.attack_shot
    execute if score @s 93.AnimationTimer matches 34 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/4.1.attack_shot
    execute if score @s 93.AnimationTimer matches 43 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/4.1.attack_shot
    execute if score @s 93.AnimationTimer matches 61 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/4.2.attack_shot

# ガード受け付け
    execute if score @s 93.AnimationTimer matches 100 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.general/11.start_guard_prepare

# 終了
    execute if score @s 93.AnimationTimer matches 111.. run function asset:mob/0327.eclael/tick/app.skill_events/20_1_latter_shot_hard/2.end
