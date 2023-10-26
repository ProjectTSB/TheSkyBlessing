#> asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/1.main
#
# アニメーションのイベントハンドラ 後半・追撃
# 素早く敵を2回斬る．
# 特定の攻撃のヒット後に使用．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 攻撃
# animated javaアニメーション再生 (長さ：49tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/3.0.play_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..13 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..13 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 演出
    execute if score @s 93.AnimationTimer matches 1 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7
# 攻撃
    execute if score @s 93.AnimationTimer matches 6 run function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 13 run function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/4.2.attack_slash_1

# ガード受け付け
    execute if score @s 93.AnimationTimer matches 20 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.general/11.start_guard_prepare

# 追撃
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 16 positioned ^ ^ ^8 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 16 positioned ^-6 ^ ^6 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 16 positioned ^6 ^ ^6 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack

# 終了
    execute if score @s 93.AnimationTimer matches 50.. run function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/2.end
