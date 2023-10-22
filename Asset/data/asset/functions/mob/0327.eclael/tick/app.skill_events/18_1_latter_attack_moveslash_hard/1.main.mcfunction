#> asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/1.main
#
# アニメーションのイベントハンドラ 後半・袈裟斬り
# 突進しながら敵を斬る．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 2回攻撃
# animated javaアニメーション再生 (長さ：45tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/3.0.play_0_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..18 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..18 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 30..50 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 30..50 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 10..17 at @s positioned ^ ^ ^0.5 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 18..21 at @s positioned ^ ^ ^0.4 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 5 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
# 攻撃
    execute if score @s 93.AnimationTimer matches 14 run function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 22 run function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/4.2.attack_slash_1

## 単発攻撃
# animated javaアニメーション再生 (長さ：45tick)
    execute if score @s 93.AnimationTimer matches 46 run function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/3.1.play_1_animation
# 移動
    execute if score @s 93.AnimationTimer matches 46..52 at @s positioned ^ ^ ^0.8 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 53..58 at @s positioned ^ ^ ^0.6 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 59..61 at @s positioned ^ ^ ^0.2 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 61 run function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/4.3.attack_slash_2
# 演出
    execute if score @s 93.AnimationTimer matches 46..52 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
    execute if score @s 93.AnimationTimer matches 63 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 0.7

# ガード受け付け
    execute if score @s 93.AnimationTimer matches 75 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.general/11.start_guard_prepare

# 終了
    execute if score @s 93.AnimationTimer matches 92.. run function asset:mob/0327.eclael/tick/app.skill_events/18_1_latter_attack_moveslash_hard/2.end
