#> asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/1.main
#
# アニメーションのイベントハンドラ 後半・回転斬り
# 力を溜め，回転斬りで広範囲を攻撃する．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 攻撃
# animated javaアニメーション再生 (長さ：95tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/3.0.play_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..20 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..20 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 演出
    execute if score @s 93.AnimationTimer matches 10 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 30 run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 2 2
    execute if score @s 93.AnimationTimer matches 10..35 run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.5 3 
    execute if score @s 93.AnimationTimer matches 51 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.1.attack_slash_0
# 予兆
    execute if score @s 93.AnimationTimer matches 20 positioned ~ ~1 ~ rotated ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.1.particle_effect
    execute if score @s 93.AnimationTimer matches 30 positioned ~ ~1 ~ rotated ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.1.particle_effect
    execute if score @s 93.AnimationTimer matches 40 positioned ~ ~1 ~ rotated ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.1.particle_effect
# 攻撃
    execute if score @s 93.AnimationTimer matches 66 if predicate api:global_vars/difficulty/max/normal run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.2.attack_slash_1
    execute if score @s 93.AnimationTimer matches 69 if predicate api:global_vars/difficulty/max/normal run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    execute if score @s 93.AnimationTimer matches 70 if predicate api:global_vars/difficulty/max/normal run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7
    execute if score @s 93.AnimationTimer matches 56 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.2.attack_slash_1
    execute if score @s 93.AnimationTimer matches 59 if predicate api:global_vars/difficulty/min/hard run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    execute if score @s 93.AnimationTimer matches 60 if predicate api:global_vars/difficulty/min/hard run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7

# 怯み受け付け
    execute if score @s 93.AnimationTimer matches 71 run tag @s add 93.Temp.NotArmor
    execute if score @s 93.AnimationTimer matches 95 run tag @s remove 93.Temp.NotArmor

# 終了
    execute if score @s 93.AnimationTimer matches 96.. run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/2.end
