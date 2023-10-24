#> asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/4.2.attack_slash_1
#
# アニメーションのイベントハンドラ 前半・連続斬り 縦回転斬り攻撃判定
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/1.main

# TODO：演出を練る
# 演出
    particle firework ~ ~1 ~ 0 0 0 0.2 5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^ rotated ~90 ~90 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.1.particle_slash

# ターゲット取得
    execute positioned ^ ^-2 ^-1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget
    execute positioned ^ ^-2 ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget
    execute positioned ^ ^-2 ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 93.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 45f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute as @a[tag=93.Temp.AttackTarget] run function lib:damage/
    tag @a[tag=93.Temp.AttackTarget] remove 93.Temp.AttackTarget
# リセット
    function lib:damage/reset
