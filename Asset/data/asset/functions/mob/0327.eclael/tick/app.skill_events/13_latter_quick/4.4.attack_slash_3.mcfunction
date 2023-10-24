#> asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/4.3.attack_slash_2
#
# アニメーションのイベントハンドラ 後半・鞭コンボ 1段目攻撃判定
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/13_latter_quick/**

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^2 rotated ~90 ~-35 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.2.particle_iai
    execute positioned ^ ^1 ^3 rotated ~90 ~-35 run function asset:mob/0327.eclael/tick/app.skill_events/02_former_slash/5.2.particle_iai

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 60f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute positioned ^ ^ ^3 as @a[tag=!PlayerShouldInvulnerable,distance=..3.3] run function lib:damage/
# リセット
    function lib:damage/reset

# 弾召喚
    data modify storage api: Argument.ID set value 329
    execute positioned ^ ^1 ^4 run function api:mob/summon
    # data modify storage api: Argument.ID set value 329
    # execute rotated ~-50 ~ positioned ^ ^1 ^4 run function api:mob/summon
    # data modify storage api: Argument.ID set value 329
    # execute rotated ~50 ~ positioned ^ ^1 ^4 run function api:mob/summon