#> asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/1.main
#
# アニメーションのイベントハンドラ 後半・袈裟斬り
# 突進しながら敵を斬る．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# プレイヤーとの距離を取得
    execute if score @s 93.AnimationTimer matches 1 if entity @a[distance=..12] run tag @s add 93.Temp.Near

## 攻撃
# animated javaアニメーション再生 (長さ：68tick)
    execute if score @s 93.AnimationTimer matches 2 run function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/3.0.play_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 2..18 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 2..18 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 2..6 at @s positioned ^ ^0.2 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 19..23 at @s positioned ^ ^-0.1 ^1.2 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 24..29 at @s positioned ^ ^ ^1.4 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 30..32 at @s positioned ^ ^ ^0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 演出
    execute if score @s 93.AnimationTimer matches 5 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
# 攻撃
    execute if score @s 93.AnimationTimer matches 29 run function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/4.1.attack_slash_0

# 終了
    execute if score @s 93.AnimationTimer matches 69.. run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/2.end
