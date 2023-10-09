#> asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/1.main
#
# アニメーションのイベントハンドラ 後半・宙船
# 敵をなます切りにする．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 宙船
# animated javaアニメーション再生 (長さ：155tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/3.0.play_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..31 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..31 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 55..67 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 55..67 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 87..112 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 87..112 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# ハードの場合，常にプレイヤーを向く
    execute if predicate api:global_vars/difficulty/min/hard if score @s 93.AnimationTimer matches 32..118 run tag @s add 93.Temp.Me
    execute if predicate api:global_vars/difficulty/min/hard if score @s 93.AnimationTimer matches 32..118 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    tag @s remove 93.Temp.Me
# 移動
    execute if score @s 93.AnimationTimer matches 10..15 at @s positioned ^ ^ ^0.6 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 16..30 at @s positioned ^ ^ ^0.2 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 51..55 at @s positioned ^ ^ ^0.6 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 56..67 at @s positioned ^ ^ ^0.2 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 68..86 at @s positioned ^ ^ ^0.3 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 87..112 at @s positioned ^ ^ ^0.1 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 113..117 at @s positioned ^ ^ ^0.6 unless entity @a[distance=..3] run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 15 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 15 positioned ^ ^1 ^2 rotated ~90 ~10 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.2.particle_slash_0
    execute if score @s 93.AnimationTimer matches 23 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 23 positioned ^ ^1 ^2 rotated ~90 ~-20 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.3.particle_slash_1
    execute if score @s 93.AnimationTimer matches 55 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 55 positioned ^ ^1 ^2 rotated ~90 ~30 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.3.particle_slash_1
    execute if score @s 93.AnimationTimer matches 63 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 63 positioned ^ ^1 ^2 rotated ~90 ~-40 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.2.particle_slash_0
    execute if score @s 93.AnimationTimer matches 76 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 76 positioned ^ ^1 ^2 rotated ~90 ~-10 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.2.particle_slash_0
    execute if score @s 93.AnimationTimer matches 82 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 82 positioned ^ ^1 ^2 rotated ~90 ~40 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.3.particle_slash_1
    execute if score @s 93.AnimationTimer matches 87 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 87 positioned ^ ^1 ^2 rotated ~90 ~-10 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.2.particle_slash_0
    execute if score @s 93.AnimationTimer matches 94 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 94 positioned ^ ^1 ^2 rotated ~90 ~-40 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.3.particle_slash_1
    execute if score @s 93.AnimationTimer matches 117 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.2.attack_slash_1
    execute if score @s 93.AnimationTimer matches 120 run playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.7

# 終了
    execute if score @s 93.AnimationTimer matches 156.. run function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/2.end
