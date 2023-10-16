#> asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/1.main
#
# アニメーションのイベントハンドラ 前半・射撃
# 距離を取って弓で撃つ．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 移動・射撃
# animated javaアニメーション再生 (長さ：56tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/3_0.play_shot_move_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..40 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..40 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 1..5 at @s positioned ^ ^ ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 7..11 at @s positioned ^ ^0.5 ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 12..15 at @s positioned ^ ^0.1 ^-1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 16..19 at @s positioned ^ ^-0.3 ^-0.4 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 20..23 at @s positioned ^ ^-0.4 ^-0.25 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 36..39 at @s positioned ^ ^0.1 ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 3 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5
    execute if score @s 93.AnimationTimer matches 16 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 1 1.3
# 攻撃
    execute if score @s 93.AnimationTimer matches 32 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 36 at @s positioned ^ ^1 ^1 run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.1.attack_shot

## 曲射・構え
# animated javaアニメーション再生 (長さ：40tick)
    execute if score @s 93.AnimationTimer matches 56 run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/3_1.play_upper_start_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 56..96 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 56..96 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 56..61 at @s positioned ^ ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 56 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 66..86 run scoreboard players add @s 93.SubTimer 1
    execute if score @s 93.AnimationTimer matches 66..86 if score @s 93.SubTimer matches 2.. at @a[tag=!PlayerShouldInvulnerable,distance=..30,sort=random,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.2.1.decide_attack_pos

## 曲射・発射
# animated javaアニメーション再生 (長さ：60tick)
    execute if score @s 93.AnimationTimer matches 96 run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/3_2.play_upper_shot_animation
# 移動
    execute if score @s 93.AnimationTimer matches 96..101 at @s positioned ^ ^-0.1 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 96 positioned ^ ^3 ^1 rotated ~ -60 run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.3.attack_shot
    execute if score @s 93.AnimationTimer matches 106..130 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=random,limit=1] at @s rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/4.4.attack_falling_arrow

# 終了
    execute if score @s 93.AnimationTimer matches 157.. run function asset:mob/0327.eclael/tick/app.skill_events/20_latter_shot/2.end
