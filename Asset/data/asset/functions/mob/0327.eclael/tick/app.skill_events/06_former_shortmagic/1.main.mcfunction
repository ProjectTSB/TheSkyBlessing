#> asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/1.main
#
# アニメーションのイベントハンドラ 前半・簡易魔法
# プレイヤーを狙った魔法を短い動作で放つ．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 魔法発射
# animated javaアニメーション再生 (長さ：80tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/3_0.play_magic_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..14 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..14 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 1..14 run tag @s remove 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 30..44 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 30..44 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 30..44 run tag @s remove 93.Temp.Me
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 10 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:52,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 44 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @s run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.3.move_attack_pos
# 予兆
    execute if score @s 93.AnimationTimer matches 14 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.2.1.particle_0
    execute if score @s 93.AnimationTimer matches 45 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.2.2.particle_1
# 攻撃
    execute if score @s 93.AnimationTimer matches 25 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.1.attack_0
    execute if score @s 93.AnimationTimer matches 55 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-3 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
    execute if score @s 93.AnimationTimer matches 58 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
    execute if score @s 93.AnimationTimer matches 61 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^3 ^ ^ run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/4.1.2.attack_1
# 演出
    execute if score @s 93.AnimationTimer matches 14 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 45 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 55 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] run playsound entity.lightning_bolt.impact hostile @a ~ ~ ~ 1 1
# 終了
    execute if score @s 93.AnimationTimer matches 81.. run function asset:mob/0327.eclael/tick/app.skill_events/06_former_shortmagic/2.end
