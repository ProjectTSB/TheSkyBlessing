#> asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/4.4.attack_slash_3
#
# アニメーションのイベントハンドラ 後半・鞭コンボ 2段目攻撃判定
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/1.main

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.9
    execute positioned ^ ^ ^1 rotated ~90 90 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/5.2.particle_slash_0
    execute positioned ^ ^ ^3 rotated ~90 90 run function asset:mob/0327.eclael/tick/app.skill_events/12_latter_whip/5.2.particle_slash_0
    execute positioned ^ ^ ^1 rotated ~90 90 run function asset:mob/0327.eclael/tick/app.skill_events/05_former_magic/5.1.1.particle_green_0

# 予兆
    particle flash ^-2 ^ ^6 0 0 0 0 1
    particle flash ^2 ^ ^6 0 0 0 0 1
    particle flash ^3.5 ^ ^12 0 0 0 0 1
    particle flash ^ ^ ^12 0 0 0 0 1
    particle flash ^-3.5 ^ ^12 0 0 0 0 1
    particle flash ^5 ^ ^18 0 0 0 0 1
    particle flash ^1.5 ^ ^18 0 0 0 0 1
    particle flash ^-1.5 ^ ^18 0 0 0 0 1
    particle flash ^-5 ^ ^18 0 0 0 0 1

# ターゲット取得
    execute positioned ^ ^ ^2 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.8] add 93.Temp.AttackTarget
    execute positioned ^ ^ ^4 run tag @a[tag=!PlayerShouldInvulnerable,distance=..1.8] add 93.Temp.AttackTarget
# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 30f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象にダメージ
    execute as @a[tag=93.Temp.AttackTarget] run function lib:damage/
# リセット
    function lib:damage/reset
    tag @a remove 93.Temp.AttackTarget