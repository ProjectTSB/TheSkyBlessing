#> asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/4.2.attack_upper
#
# アニメーションのイベントハンドラ 剣モード・斬撃コンボ 斬り上げ攻撃判定
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/1.main

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.9
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.3
    execute positioned ^ ^ ^1.5 positioned ~ ~1 ~ rotated ~90 -90 positioned ^ ^ ^0.5 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/5.3.effect_slash_r
    execute positioned ^ ^ ^2 positioned ~ ~1 ~ rotated ~90 -90 positioned ^ ^ ^1 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/5.3.effect_slash_r

# ターゲット取得
# 前方に広い判定
    execute positioned ^ ^ ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 8T.Temp.AttackTarget
    execute positioned ^ ^ ^2 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 8T.Temp.AttackTarget
    execute positioned ^ ^ ^3 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2] add 8T.Temp.AttackTarget

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
# 対象にダメージ
    execute as @a[tag=8T.Temp.AttackTarget] run function lib:damage/
    tag @a[tag=8T.Temp.AttackTarget] remove 8T.Temp.AttackTarget
# リセット
    function lib:damage/reset
