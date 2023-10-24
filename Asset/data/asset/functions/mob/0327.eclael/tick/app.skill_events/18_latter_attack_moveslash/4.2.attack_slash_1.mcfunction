#> asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/4.2.attack_slash_1
#
# アニメーションのイベントハンドラ 後半・袈裟斬り
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/18_latter_attack_moveslash/**

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^2 rotated ~90 ~-35 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.2.particle_slash_0

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 46f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 if entity @a[tag=!PlayerShouldInvulnerable,distance=..3] run tag @s add 93.Temp.AttackHit
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset
