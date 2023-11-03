#> asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.2.target_select
#
# 射撃攻撃のターゲットを場合分け
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/03_former_shot/1.1.main_short/1.main

# サバイバルが存在する distance=..100なのは範囲外で矢を打たない場合を無くすため
    execute if score @s 93.AnimationTimer matches 92 if entity @p[tag=PlayerShouldInvulnerable,distance=..100] if entity @p[tag=PlayerShouldInvulnerable,distance=..100] at @p[tag=PlayerShouldInvulnerable] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 103 if entity @p[tag=PlayerShouldInvulnerable,distance=..100] if entity @p[tag=PlayerShouldInvulnerable,distance=..100] at @p[tag=PlayerShouldInvulnerable] run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:20,Tags:["Object","93.Aec.AttackPos"]}

# スペクテイターのみ
    execute if score @s 93.AnimationTimer matches 92 unless entity @p[tag=PlayerShouldInvulnerable,distance=..100] if entity @p[tag=!PlayerShouldInvulnerable,distance=..100] at @p run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 103 unless entity @p[tag=PlayerShouldInvulnerable,distance=..100] if entity @p[tag=!PlayerShouldInvulnerable,distance=..100] at @p run summon area_effect_cloud ~ ~1 ~ {CustomNameVisible:0b,Particle:"block air",Duration:8,Tags:["Object","93.Aec.AttackPos"]}
