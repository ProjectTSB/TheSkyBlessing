#> asset:mob/0188.fireball/event/damage
#
# プレイヤーにダメージ
#
# @within function asset:mob/0188.fireball/event/hit

# 引数の設定
    # 与えるダメージ = 7.5
        data modify storage lib: Argument.Damage set value 15.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# ダメージを与える
    function lib:damage/
# リセット
    data remove storage lib: Argument