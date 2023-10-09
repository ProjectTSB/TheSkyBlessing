#> asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/4.2.attack_spear
#
# アニメーションのイベントハンドラ 杖モード・杖殴り 突き攻撃
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/02_rod_attack/1.main

# TODO：演出を練る
# 演出
    particle electric_spark ^ ^2 ^-1 0.5 0.5 0.5 0.2 3
    particle electric_spark ^ ^2 ^-3 0.5 0.5 0.5 0.2 3
    # particle dust 1 1000000000 1000000000 1 ~ ~1.2 ~ 0 1 0 1 10 normal @a
    # particle dust 1 1000000000 1000000000 1 ~ ~0.6 ~ 0.1 0.5 0.1 1 10 normal @a
    # particle dust 1 1000000000 1000000000 1 ~ ~0 ~ 0.4 0.25 0.4 1 10 normal @a
    


# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 8T.Temp.AttackTarget
    execute positioned ^ ^ ^4 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 8T.Temp.AttackTarget
    execute positioned ^ ^ ^6 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 8T.Temp.AttackTarget
    execute as @a[tag=8T.Temp.AttackTarget] run function lib:damage/
    tag @a[tag=8T.Temp.AttackTarget] remove 8T.Temp.AttackTarget

# リセット
    function lib:damage/reset
