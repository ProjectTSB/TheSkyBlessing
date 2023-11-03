#> asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.main
#
# アニメーションのイベントハンドラ 前半・射撃
# 距離を取って弓で撃つ．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# プレイヤーが近くにいなければ，即座にそのまま射撃
    execute if score @s 93.AnimationTimer matches 1 unless entity @a[distance=..8] run scoreboard players set @s 93.AnimationTimer 66

## 移動・射撃
# animated javaアニメーション再生 (長さ：65tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/3_0.play_shot_move_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..40 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..40 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 1..5 at @s positioned ^ ^ ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 11..15 at @s positioned ^ ^0.5 ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 16..20 at @s positioned ^ ^0.1 ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 21..25 at @s positioned ^ ^-0.1 ^-0.4 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 26..30 at @s positioned ^ ^-0.4 ^-0.25 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 31..40 at @s positioned ^ ^-0.05 ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 45..48 at @s positioned ^ ^0.1 ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 8 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5
    execute if score @s 93.AnimationTimer matches 22 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 1 1.3
# 移動方向決定
    execute if score @s 93.AnimationTimer matches 65 if predicate lib:random_pass_per/50 run tag @s add 93.Temp.MoveToRight
    execute if score @s 93.AnimationTimer matches 65 if entity @s[tag=!93.Temp.MoveToRight] run tag @s add 93.Temp.MoveToLeft
# 攻撃
    execute if score @s 93.AnimationTimer matches 40 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 45 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/4.1.attack_shot

## 射撃
# animated javaアニメーション再生 (長さ：95tick)
    execute if score @s 93.AnimationTimer matches 66 run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/3_1.play_shot_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 50..91 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 50..91 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 98..103 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 98..103 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 66..72 if entity @s[tag=93.Temp.MoveToRight,tag=!93.Temp.MoveToLeft] at @s positioned ^0.4 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 73..78 if entity @s[tag=93.Temp.MoveToRight,tag=!93.Temp.MoveToLeft] at @s positioned ^0.2 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 79..82 if entity @s[tag=93.Temp.MoveToRight,tag=!93.Temp.MoveToLeft] at @s positioned ^0.1 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 66..72 if entity @s[tag=93.Temp.MoveToLeft,tag=!93.Temp.MoveToRight] at @s positioned ^-0.4 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 73..78 if entity @s[tag=93.Temp.MoveToLeft,tag=!93.Temp.MoveToRight] at @s positioned ^-0.2 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 79..82 if entity @s[tag=93.Temp.MoveToLeft,tag=!93.Temp.MoveToRight] at @s positioned ^-0.1 ^ ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 66..72 if entity @s[tag=!93.Temp.MoveToRight,tag=!93.Temp.MoveToLeft] at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 73..78 if entity @s[tag=!93.Temp.MoveToRight,tag=!93.Temp.MoveToLeft] at @s positioned ^ ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 96..99 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 106..109 at @s positioned ^ ^0.1 ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 136..155 at @s positioned ^ ^-0.03 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 66 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5
    execute if score @s 93.AnimationTimer matches 66 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 1 1.3
# 攻撃
    execute if score @s 93.AnimationTimer matches 92 run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.2.target_select
    execute if score @s 93.AnimationTimer matches 96 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/4.1.attack_shot
    execute if score @s 93.AnimationTimer matches 103 run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.2.target_select
    execute if score @s 93.AnimationTimer matches 106 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/4.1.attack_shot

# 終了
    execute if score @s 93.AnimationTimer matches 161.. run function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/2.end
