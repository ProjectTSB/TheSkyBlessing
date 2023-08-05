#> asset:mob/0318.haruclaire_rod/tick/damage_move
#
# Mobのtick時の処理
#
# @within function asset:mob/0318.haruclaire_rod/tick/move

# TODO：ダメージを調整する
# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 30.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[distance=..1.5] unless entity @s[tag=PlayerShouldInvulnerable] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 連続でヒットしないよう，クールタイムを設定
    scoreboard players set @s 8U.CoolTime 20
