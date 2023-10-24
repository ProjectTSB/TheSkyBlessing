#> asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/4.1.attack_slash_0
#
# アニメーションのイベントハンドラ 後半・袈裟斬り
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/22_latter_pursuit/**

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^2 rotated ~90 ~20 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.2.particle_slash_0

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 50f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..2.7] run function lib:damage/
# リセット
    function lib:damage/reset
