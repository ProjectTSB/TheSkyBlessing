#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.3.attack_laser_damage
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ レーザー攻撃判定
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.1.attack_laser

# 演出
    playsound minecraft:entity.puffer_fish.death hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1
    particle dust 1 1000000000 1000000000 2 ^0 ^-2 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0.61803 ^-1.90211 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.17557 ^-1.61803 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.61803 ^-1.17557 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.90211 ^-0.61803 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^2 ^0 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.90211 ^0.61803 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.61803 ^1.17557 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^1.17557 ^1.61803 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0.61803 ^1.90211 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^0 ^2 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-0.61803 ^1.90211 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.17557 ^1.61803 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.61803 ^1.17557 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.90211 ^0.61803 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-2 ^0 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.90211 ^-0.61803 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.61803 ^-1.17557 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-1.17557 ^-1.61803 ^ 0 0 0 0 1
    particle dust 1 1000000000 1000000000 2 ^-0.61803 ^-1.90211 ^ 0 0 0 0 1

    particle dust 100000000 1000000000 1000000000 2 ^0 ^0 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0.2357 ^-0.2357 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0.4714 ^-0.4714 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0.70711 ^-0.70711 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0.94281 ^-0.94281 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^1.17851 ^-1.17851 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^1.41421 ^-1.41421 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0 ^0 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0.2357 ^0.2357 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0.4714 ^0.4714 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0.70711 ^0.70711 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0.94281 ^0.94281 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^1.17851 ^1.17851 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^1.41421 ^1.41421 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0 ^0 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-0.2357 ^0.2357 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-0.4714 ^0.4714 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-0.70711 ^0.70711 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-0.94281 ^0.94281 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-1.17851 ^1.17851 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-1.41421 ^1.41421 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^0 ^0 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-0.2357 ^-0.2357 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-0.4714 ^-0.4714 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-0.70711 ^-0.70711 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-0.94281 ^-0.94281 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-1.17851 ^-1.17851 ^ 0 0 0 0.05 1
    particle dust 100000000 1000000000 1000000000 2 ^-1.41421 ^-1.41421 ^ 0 0 0 0.05 1

# ターゲット取得
    execute positioned ^ ^ ^2 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^4 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^6 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^8 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^10 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^12 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^14 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^16 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^18 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^20 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^22 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^24 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^26 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^28 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target
    execute positioned ^ ^ ^30 run function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.1.4.attack_laser_damage_target

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象にダメージ
    execute as @a[tag=8T.Temp.AttackTarget] run function lib:damage/
    tag @a[tag=8T.Temp.AttackTarget] remove 8T.Temp.AttackTarget

# リセット
    function lib:damage/reset
