#> asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/1.1.main_near
#
# アニメーションのイベントハンドラ 後半・袈裟斬り
# 突進しながら敵を斬る．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 攻撃
# animated javaアニメーション再生 (長さ：69tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/3.1.play_near_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..8 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..8 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 17..28 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 17..28 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 10..17 at @s positioned ^ ^ ^0.5 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 28..36 at @s positioned ^ ^ ^0.2 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 3 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
# 攻撃
    execute if score @s 93.AnimationTimer matches 15 run function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 37 run function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/4.2.attack_slash_1
# 終了
    execute if score @s 93.AnimationTimer matches 69.. run function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/2.end
