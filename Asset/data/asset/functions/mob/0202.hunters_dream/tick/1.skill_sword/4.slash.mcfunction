#> asset:mob/0202.hunters_dream/tick/1.skill_sword/4.slash
#
#
#
# @within function asset:mob/0202.hunters_dream/tick/1.skill_sword/1.skill_sword


# 演出
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^1 0 0 0 1 2 normal
    execute positioned ~ ~1 ~ run particle sweep_attack ^ ^ ^2 0 0 0 1 2 normal
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 12.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 前方にいたプレイヤーにダメージ
    execute positioned ^ ^ ^1 as @p[distance=..2.5] run function lib:damage/
# リセット
    function lib:damage/reset

# 演出
    execute positioned ^ ^ ^1 as @p[distance=..2.5] at @s run function asset:mob/0202.hunters_dream/tick/1.skill_sword/5.vfx