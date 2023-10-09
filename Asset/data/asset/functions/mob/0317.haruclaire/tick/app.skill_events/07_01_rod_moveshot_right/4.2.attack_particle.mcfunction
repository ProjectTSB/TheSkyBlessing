#> asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/4.2.attack_particle
#
# アニメーションのイベントハンドラ 杖モード・あられ 攻撃演出
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/*

# 処理
    scoreboard players remove @s 8T.AttackRange 1

# 演出
    particle dust 1 1000000000 1000000000 1 ~ ~ ~ 0.1 0.1 0.1 1 3 normal @a

# プレイヤーに当たったら終了
    execute positioned ~ ~-1 ~ if entity @a[tag=!PlayerShouldInvulnerable,distance=..0.5] run tag @a[tag=!PlayerShouldInvulnerable,distance=..0.5] add 8T.Temp.AttackTarget
    execute if score @s 8T.AttackRange matches 1.. unless entity @a[tag=8T.Temp.AttackTarget] positioned ^ ^ ^0.2 run function asset:mob/0317.haruclaire/tick/app.skill_events/06_rod_shot/4.2.attack_particle

