#> asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/1.1.main_move
#
# アニメーションのイベントハンドラ 後半・突き
# 突きで敵を攻撃する．
# 刀を踏まれると怯む．
#
# @within function asset:mob/0327.eclael/tick/app.2.skill_event

## 納刀
# animated javaアニメーション再生 (長さ：70tick)
    execute if score @s 93.AnimationTimer matches 1 run function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/3.1.play_move_animation
# プレイヤーの方を向く
    execute if score @s 93.AnimationTimer matches 1..34 run tag @s add 93.Temp.Me
    execute if score @s 93.AnimationTimer matches 1..34 as @a[tag=!PlayerShouldInvulnerable,sort=nearest,limit=1] run function asset:mob/0327.eclael/tick/app.general/1.rotate
# 移動
    execute if score @s 93.AnimationTimer matches 1..8 at @s positioned ^0.5 ^ ^-0.1 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 9..15 at @s positioned ^0.3 ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 1..15 at @s positioned ^0.1 ^ ^0.3 unless entity @a[distance=..5] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 16..22 at @s positioned ^0.1 ^ ^-0.05 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 26..33 at @s positioned ^ ^ ^1.2 unless entity @a[distance=..1.5] run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 34..37 at @s positioned ^ ^ ^0.3 run function asset:mob/0327.eclael/tick/app.general/2.teleport
    execute if score @s 93.AnimationTimer matches 1..15 run function asset:mob/0327.eclael/tick/app.general/15.update_altitude
# 演出
    execute if score @s 93.AnimationTimer matches 3 run playsound item.armor.equip_gold hostile @a ~ ~ ~ 1 0.7
    execute if score @s 93.AnimationTimer matches 25 run playsound entity.experience_orb.pickup hostile @a ~ ~ ~ 1 2
    execute if score @s 93.AnimationTimer matches 25 run particle electric_spark ^-0.5 ^0.8 ^1.5 0 0 0 1 10
    execute if score @s 93.AnimationTimer matches 26..37 run particle firework ~ ~1 ~ 0.4 0.4 0.4 0.1 2
    execute if score @s 93.AnimationTimer matches 26..27 run playsound block.grass.step hostile @a ~ ~ ~ 1 1
# 攻撃
    execute if score @s 93.AnimationTimer matches 38 run function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/4.1.attack_slash

# 追撃
    execute if entity @s[tag=93.Temp.AttackHit] if score @s 93.AnimationTimer matches 56 run function asset:mob/0327.eclael/tick/app.general/10.1.check_pursuit

# ガード受け付け
    execute if entity @s[tag=!93.Temp.AttackHit] if score @s 93.AnimationTimer matches 56 if predicate api:global_vars/difficulty/min/hard run function asset:mob/0327.eclael/tick/app.general/11.start_guard_prepare

# 追撃
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 22 positioned ^-4 ^ ^6 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 22 positioned ^4 ^ ^6 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 24 positioned ^-4 ^ ^12 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 24 positioned ^4 ^ ^12 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 26 positioned ^-4 ^ ^18 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 26 positioned ^4 ^ ^18 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 28 positioned ^-4 ^ ^24 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack
    execute if entity @s[tag=93.Temp.IsThunder] if score @s 93.AnimationTimer matches 28 positioned ^4 ^ ^24 run function asset:mob/0327.eclael/tick/app.general/16.thunderstorm_attack

# 終了
    execute if score @s 93.AnimationTimer matches 71.. run function asset:mob/0327.eclael/tick/app.skill_events/24_latter_spear/2.end
