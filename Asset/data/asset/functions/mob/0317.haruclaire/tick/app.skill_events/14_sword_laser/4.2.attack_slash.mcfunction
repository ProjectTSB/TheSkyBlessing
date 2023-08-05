#> asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/4.2.attack_slash
#
# アニメーションのイベントハンドラ 剣モード・レーザー斬りコンボ 斬撃-1攻撃判定
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/14_sword_laser/1.main

# TODO：演出を練る
# 演出
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.8
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1.1

# ターゲット取得
    execute positioned ^ ^ ^1 run tag @a[tag=!PlayerShouldInvulnerable,distance=..2.5] add 8T.Temp.AttackTarget

# TODO：与えるダメージの調整
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 35f
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
