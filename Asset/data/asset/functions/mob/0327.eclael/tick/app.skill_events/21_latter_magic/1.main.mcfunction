#> asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/1.main
#
# アニメーションのイベントハンドラ 後半・魔法
# 魔法で攻撃した後，近づいて斬る．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 魔法
# animated javaアニメーション再生 (長さ：40tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/3.0.play_magic_move_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..40 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..40 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 演出
    execute if score @s 93.AnimationTimer matches 22 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 15 at @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~0.5 ~ {CustomNameVisible:0b,Particle:"block air",Duration:16,Tags:["Object","93.Aec.AttackPos"]}
# 予兆
    execute if score @s 93.AnimationTimer matches 20 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/5.1.particle_0
# 攻撃
    execute if score @s 93.AnimationTimer matches 30 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/4.1.attack

## 追い斬り
# animated javaアニメーション再生 (長さ：70tick)
    execute if score @s 93.AnimationTimer matches 41 run function asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/3.1.play_slash_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 56..60 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 56..60 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 45..53 at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet positioned ^ ^0.1 ^0.8 unless entity @a[distance=..3] rotated ~ 0 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 54..60 at @s facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] feet positioned ^ ^-0.05 ^0.5 unless entity @a[distance=..3] rotated ~ 0 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 61..67 at @s positioned ^ ^-0.06 ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 68..72 at @s positioned ^ ^ ^0.6 unless entity @a[distance=..3] rotated ~ 0 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 73..80 at @s positioned ^ ^ ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 72 run function asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/4.2.attack_slash
# 演出
    execute if score @s 93.AnimationTimer matches 41 run playsound entity.phantom.flap hostile @a ~ ~ ~ 1 0.5

# 終了
    execute if score @s 93.AnimationTimer matches 112.. run function asset:mob/0327.eclael/tick/app.skill_events/21_latter_magic/2.end
