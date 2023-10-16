#> asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/1.1.main_mirror
#
# アニメーションのイベントハンドラ 後半・移動射撃
# 距離を取って弓で撃つ．宙船・紅葉舞に繋がる．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# 攻撃地点決定
    execute if score @s 93.AnimationTimer matches 80 at @r[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:0b,Particle:"block air",Duration:40,Tags:["Object","93.Aec.AttackPos"]}
    execute if score @s 93.AnimationTimer matches 80 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @p rotated ~ 0 run tp @s ^ ^ ^ ~ 0

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 81 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/3_1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 81 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-10 ^6 ^12 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 81 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 84 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^12 ^3 ^8 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 84 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 87 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^-6 ^0.2 ^4 facing entity @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 87 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

## 斬撃
# animated javaアニメーション再生 (長さ：26tick)
    execute if score @s 93.AnimationTimer matches 88 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/3_2.play_slash_animation
# 攻撃地点更新
    execute if score @s 93.AnimationTimer matches 113 as @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] at @s positioned as @p run tp @s ^ ^ ^ ~ 0
# 移動
    execute if score @s 93.AnimationTimer matches 95..99 at @s positioned ^ ^ ^0.3 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 100..103 at @s positioned ^ ^ ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 99 at @s run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/4.2.attack_slash

## 電光石火
# animated javaアニメーション再生 (長さ：1tick)
    execute if score @s 93.AnimationTimer matches 115 run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/3_1.play_invisible_animation
# 移動
    execute if score @s 93.AnimationTimer matches 115 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^ ^8 ^4 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 115 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect
    execute if score @s 93.AnimationTimer matches 118 at @e[type=area_effect_cloud,tag=93.Aec.AttackPos,sort=nearest,limit=1] positioned ^6 ^0.2 ^8 run tp @s ~ ~ ~ ~ 0
    execute if score @s 93.AnimationTimer matches 118 run function asset:mob/0327.eclael/tick/app.general/9.lightning_fast_effect

# 終了
    execute if score @s 93.AnimationTimer matches 119.. run function asset:mob/0327.eclael/tick/app.skill_events/14_latter_moveshot/2.1.end_mirror
