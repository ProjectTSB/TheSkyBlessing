#> asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/1.1.main_hard
#
# アニメーションのイベントハンドラ 後半・回転斬り ハード
# 力を溜め，回転斬りで広範囲を攻撃する．
# その後，紅葉舞に移行する．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 攻撃
# animated javaアニメーション再生 (長さ：95tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/3.1.play_hard_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..20 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..20 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 演出
    execute if score @s 93.AnimationTimer matches 10 run playsound item.axe.scrape hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 30 run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 2 2
    execute if score @s 93.AnimationTimer matches 10..35 run particle end_rod ~ ~1 ~ 0.1 0.1 0.1 0.5 3 
    execute if score @s 93.AnimationTimer matches 51 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 80..85 run playsound block.grass.step hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 86 run playsound item.axe.scrape hostile @a ~ ~ ~ 2 2
# 予兆
    execute if score @s 93.AnimationTimer matches 20 positioned ~ ~1 ~ rotated ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.1.particle_effect
    execute if score @s 93.AnimationTimer matches 30 positioned ~ ~1 ~ rotated ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.1.particle_effect
    execute if score @s 93.AnimationTimer matches 40 positioned ~ ~1 ~ rotated ~ ~ run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/5.1.particle_effect
# 攻撃
    execute if score @s 93.AnimationTimer matches 66 run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/4.2.attack_slash_1
    execute if score @s 93.AnimationTimer matches 69 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 1.2
    execute if score @s 93.AnimationTimer matches 70 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7
# 終了
    execute if score @s 93.AnimationTimer matches 96.. run function asset:mob/0327.eclael/tick/app.skill_events/17_latter_spinslash/2.1.end_hard
