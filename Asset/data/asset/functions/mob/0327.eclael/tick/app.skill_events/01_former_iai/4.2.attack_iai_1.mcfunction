#> asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/4.2.attack_iai_1
#
# アニメーションのイベントハンドラ 杖モード・杖殴り なぎ払い攻撃判定
#
# @within function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/1.main

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.5
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.2
    execute positioned ^ ^1 ^2 rotated ~90 ~-30 run function asset:mob/0327.eclael/tick/app.skill_events/01_former_iai/5.3.particle_slash_1

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 42f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# 対象に
    execute positioned ^ ^ ^2 as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function lib:damage/
# リセット
    function lib:damage/reset
