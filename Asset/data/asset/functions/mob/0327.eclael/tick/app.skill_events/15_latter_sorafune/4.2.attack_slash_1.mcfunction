#> asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/4.2.attack_slash_1
#
# アニメーションのイベントハンドラ 後半・宙船
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/**

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 2 0.5
    execute positioned ^ ^1 ^2 rotated ~90 ~35 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.2.particle_iai
    execute positioned ^ ^1 ^3 rotated ~90 ~35 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.2.particle_iai
    execute positioned ^ ^1 ^3 rotated ~90 ~35 run function asset:mob/0327.eclael/tick/app.skill_events/15_latter_sorafune/5.2.particle_slash_1

# ターゲット取得
    execute positioned ^2 ^ ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget
    execute positioned ^ ^ ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..3.5] add 93.Temp.AttackTarget
    execute positioned ^-2 ^ ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 70f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=93.Temp.AttackTarget,tag=!PlayerShouldInvulnerable] run function lib:damage/
    tag @a remove 93.Temp.AttackTarget
# リセット
    function lib:damage/reset
