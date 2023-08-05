#> asset:mob/0319.haruclaire_ice_bullet/tick/move/damage_break
#
# Mobのtick時の処理
#
# @within function asset:mob/0319.haruclaire_ice_bullet/tick/move/move

# TODO：ダメージを調整する
# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 38.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える
    execute as @a[distance=..2.5] unless entity @s[tag=PlayerShouldInvulnerable] at @s run function lib:damage/
# リセット
    function lib:damage/reset

# 消失
    function asset:mob/0319.haruclaire_ice_bullet/tick/move/kill