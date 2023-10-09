#> asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/1.main
#
# アニメーションのイベントハンドラ 杖モード・あられ
# 氷弾を空中に設置する．
# 氷弾は一定時間後，近くのプレイヤーに向けて発射される
#
# @within function asset:mob/0317.haruclaire/tick/app.2.skill_event

# animated javaアニメーション再生 (長さ：106tick)
    execute if score @s 8T.AnimationTimer matches 1 run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/3.play_animation

# 移動モード決定
    execute if score @s 8T.AnimationTimer matches 1 if predicate lib:random_pass_per/50 run tag @s add 8T.SkillEv.Rod.Idle.MoveToSide
# 適当に移動
    execute at @s if entity @s[tag=8T.SkillEv.Rod.Idle.MoveToSide] positioned ^0.05 ^ ^ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# プレイヤーから離れるように移動
    execute at @s if entity @s[tag=!8T.SkillEv.Rod.Idle.MoveToHome,tag=!8T.SkillEv.Rod.Idle.MoveToSide] facing entity @p feet rotated ~ 0 positioned ^ ^ ^-0.05 rotated as @s run function asset:mob/0317.haruclaire/tick/app.general/2.teleport

# プレイヤーの方を向く
    execute if score @s 8T.AnimationTimer matches 1..4 at @s positioned ^ ^ ^-0.1 facing entity @p feet positioned ~ ~0.1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 5..12 at @s positioned ^ ^ ^-0.1 facing entity @p feet positioned ~ ~0.1 ~ run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 13..60 at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
    execute if score @s 8T.AnimationTimer matches 88..94 at @s positioned ^ ^-0.1 ^-0.1 rotated ~ 0 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
    execute if score @s 8T.AnimationTimer matches 95..99 at @s positioned ^ ^-0.05 ^-0.1 rotated ~ 0 run function asset:mob/0317.haruclaire/tick/app.general/2.teleport
# 予兆演出
    execute if score @s 8T.AnimationTimer matches 1 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 15 run playsound item.armor.equip_iron hostile @a ~ ~ ~ 1 1.2
    execute if score @s 8T.AnimationTimer matches 35 run playsound item.armor.equip_chain hostile @a ~ ~ ~ 1 1.2

# 氷弾設置
    execute if score @s 8T.AnimationTimer matches 10 positioned ^-5 ^2 ^-2 run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/4.attack
    execute if score @s 8T.AnimationTimer matches 15 positioned ^-2 ^3 ^-2 run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/4.attack
    execute if score @s 8T.AnimationTimer matches 20 positioned ^3 ^4 ^-2 run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/4.attack
    execute if score @s 8T.AnimationTimer matches 25 positioned ^5 ^3 ^-2 run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/4.attack
    execute if score @s 8T.AnimationTimer matches 30 positioned ^-4 ^-1 ^-1 run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/4.attack
    execute if score @s 8T.AnimationTimer matches 35 positioned ^2 ^4 ^-4 run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/4.attack
    execute if score @s 8T.AnimationTimer matches 40 positioned ^4 ^1 ^-1 run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/4.attack
# 終了
    execute if score @s 8T.AnimationTimer matches 106.. run function asset:mob/0317.haruclaire/tick/app.skill_events/05_rod_icebullet/2.end
