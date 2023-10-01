#> asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/1.main
#
# アニメーションのイベントハンドラ 前半・射撃
# 距離を取って弓で撃つ．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 構え
# animated javaアニメーション再生 (長さ：80tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/3_0.play_pose_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..40 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..40 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 1..5 at @s positioned ^ ^0.4 ^-0.2 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 6..10 at @s positioned ^ ^0.2 ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5
    execute if score @s 93.AnimationTimer matches 5 run playsound item.crossbow.loading_start hostile @a ~ ~ ~ 2 1.3
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 10 rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos
    execute if score @s 93.AnimationTimer matches 15 rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos
    execute if score @s 93.AnimationTimer matches 20 rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos
    execute if score @s 93.AnimationTimer matches 25 rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos
    execute if score @s 93.AnimationTimer matches 30 rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos
    execute if score @s 93.AnimationTimer matches 35 rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos
    execute if score @s 93.AnimationTimer matches 40 rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos
    execute if score @s 93.AnimationTimer matches 45 rotated ~ -90 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/4.1.decide_attack_pos

## 射撃
# animated javaアニメーション再生 (長さ：55tick)
    execute if score @s 93.AnimationTimer matches 81 run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/3_1.play_shot_animation
# 移動
    execute if score @s 93.AnimationTimer matches 81..85 at @s positioned ^ ^-0.1 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport

# 終了
    execute if score @s 93.AnimationTimer matches 136.. run function asset:mob/0327.eclael/tick/app.skill_events/04_former_upper_shot/2.end
