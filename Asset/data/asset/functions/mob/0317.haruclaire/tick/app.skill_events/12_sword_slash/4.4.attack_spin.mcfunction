#> asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/4.4.attack_spin
#
# アニメーションのイベントハンドラ 剣モード・斬撃コンボ 回転斬り攻撃判定
#
# @within function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/1.main

# TODO：演出を練る
# 演出
    playsound entity.player.attack.sweep master @a ~ ~ ~ 1 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 0.7
    playsound minecraft:item.trident.throw hostile @a ~ ~ ~ 1 1
    execute positioned ~ ~1.5 ~ rotated ~90 10 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/5.4.effect_spin
    execute positioned ~ ~1.5 ~ rotated ~90 -15 run function asset:mob/0317.haruclaire/tick/app.skill_events/12_sword_slash/5.5.effect_spin_r

# ターゲット取得
# 範囲攻撃
    tag @a[tag=!PlayerShouldInvulnerable,distance=..4] add 8T.Temp.AttackTarget

# TODO：与えるダメージの調整，威力高めにする
# ダメージ
    # 与えるダメージ = 20
        data modify storage lib: Argument.Damage set value 55f
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
