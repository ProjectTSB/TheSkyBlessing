#> asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/1.main
#
# アニメーションのイベントハンドラ 後半・紅葉舞
# 空に飛びあがり，回転斬りで広範囲を攻撃する．
# 足元が死角．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

# ハードの場合予備動作短縮
    execute if score @s 93.AnimationTimer matches 1 if predicate api:global_vars/difficulty/min/hard run scoreboard players set @s 93.AnimationTimer 20

## 構え
# animated javaアニメーション再生 (長さ：20tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/3.1.play_start_animation
# 演出
    execute if score @s 93.AnimationTimer matches 3 run playsound item.armor.equip_leather hostile @a ~ ~ ~ 1 0.7

## 紅葉舞
# animated javaアニメーション再生 (長さ：90tick)
    execute if score @s 93.AnimationTimer matches 21 run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/3.0.play_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..25 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..25 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動(上)
    execute if score @s 93.AnimationTimer matches 30..35 at @s positioned ^ ^0.3 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 36..40 at @s positioned ^ ^0.06 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 66..70 at @s positioned ^ ^-0.05 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 70..79 at @s positioned ^ ^-0.07 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 80..90 at @s positioned ^ ^-0.4 ^ run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 移動
    execute if score @s 93.AnimationTimer matches 1..25 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
    execute if score @s 93.AnimationTimer matches 30..35 at @s positioned ^ ^ ^0.6 unless entity @a[distance=..8] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 36..45 at @s positioned ^ ^ ^0.1 positioned ~ ~-1.8 ~ unless entity @a[distance=..8] positioned ~ ~1.8 ~ run function asset:mob/0327.eclael/tick/app.general/2.teleport
# ハードの場合は大きく追いかける
    execute if score @s 93.AnimationTimer matches 26..65 if predicate api:global_vars/difficulty/min/hard run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 26..65 if predicate api:global_vars/difficulty/min/hard as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
    execute if score @s 93.AnimationTimer matches 26..65 if predicate api:global_vars/difficulty/min/hard at @s positioned ~ ~-1.8 ~ unless entity @a[distance=..8] facing entity @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] eyes positioned ^ ^ ^0.6 positioned ~ ~1.8 ~ rotated ~ 0 run function asset:mob/0327.eclael/tick/app.general/2.teleport
# 攻撃
    execute if score @s 93.AnimationTimer matches 33 run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/4.1.attack_slash_0
    execute if score @s 93.AnimationTimer matches 35 run playsound item.trident.return hostile @a ~ ~ ~ 2 1.3
    execute if score @s 93.AnimationTimer matches 43 run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/4.2.attack_slash_1
    execute if score @s 93.AnimationTimer matches 46 run playsound item.trident.return hostile @a ~ ~ ~ 2 1.3
    execute if score @s 93.AnimationTimer matches 59 run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/4.3.attack_slash_2
    execute if score @s 93.AnimationTimer matches 62 run playsound item.trident.return hostile @a ~ ~ ~ 2 0.7
# 演出
    execute if score @s 93.AnimationTimer matches 28..31 run playsound block.grass.step hostile @a ~ ~ ~ 1 0.7

# 怯み受け付け
    execute if score @s 93.AnimationTimer matches 70 run tag @s add 93.Temp.NotArmor
    execute if score @s 93.AnimationTimer matches 109 run tag @s remove 93.Temp.NotArmor

# 終了
    execute if score @s 93.AnimationTimer matches 110.. run function asset:mob/0327.eclael/tick/app.skill_events/16_latter_momiji/2.end
