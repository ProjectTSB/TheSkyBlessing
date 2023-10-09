#> asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/4.2.attack_counter
#
# アニメーションのイベントハンドラ 剣モード・溜め斬りコンボ カウンター攻撃判定
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/15_sword_charge/1.main

# TODO：演出を練る
# 演出
    particle flash ~ ~ ~ 0 0 0 0 1 normal @a
    playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1

# 斬撃演出
    particle end_rod ^0 ^ ^-9 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-8.53846 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-8.07692 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-7.61538 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-7.15385 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-6.69231 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-6.23077 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-5.76923 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-5.30769 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-4.84615 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-4.38462 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-3.92308 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-3.46154 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-3 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-2.53846 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-2.07692 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-1.61538 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-1.15385 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-0.69231 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^-0.23077 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^0.23077 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^0.69231 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^1.15385 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^1.61538 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^2.07692 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^2.53846 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^3 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^3.46154 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^3.92308 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^4.38462 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^4.84615 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^5.30769 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^5.76923 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^6.23077 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^6.69231 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^7.15385 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^7.61538 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^8.07692 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^8.53846 0.1 0.1 0.1 0 5 normal @a
    particle end_rod ^0 ^ ^9 0.1 0.1 0.1 0 5 normal @a

    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-9 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-8.53846 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-8.07692 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-7.61538 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-7.15385 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-6.69231 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-6.23077 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^-5.76923 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^-5.30769 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^-4.84615 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^-4.38462 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^-3.92308 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^-3.46154 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^-3 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 4 ^0 ^ ^-2.53846 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 4 ^0 ^ ^-2.07692 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 4 ^0 ^ ^-1.61538 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 4 ^0 ^ ^-1.15385 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 4 ^0 ^ ^-0.69231 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 4 ^0 ^ ^-0.23077 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 4 ^0 ^ ^0.23077 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^0.69231 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^1.15385 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^1.61538 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^2.07692 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^2.53846 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^3 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 3 ^0 ^ ^3.46154 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^3.92308 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^4.38462 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^4.84615 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^5.30769 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^5.76923 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^6.23077 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^6.69231 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^7.15385 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^7.61538 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^8.07692 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^8.53846 0.1 0.1 0.1 0 5 normal @a
    particle dust 1 1000000000 1000000000 2 ^0 ^ ^9 0.1 0.1 0.1 0 5 normal @a

# ターゲット取得
    tag @a[tag=!PlayerShouldInvulnerable,distance=..1.2] add 8T.Temp.AttackTarget

# TODO：与えるダメージの調整，大きめに設定する
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 対象にダメージ
    execute as @a[tag=8T.Temp.AttackTarget] run function lib:damage/
    tag @a[tag=8T.Temp.AttackTarget] remove 8T.Temp.AttackTarget
# リセット
    function lib:damage/reset
