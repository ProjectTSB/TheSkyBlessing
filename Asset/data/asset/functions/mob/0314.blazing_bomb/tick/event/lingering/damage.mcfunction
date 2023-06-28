#> asset:mob/0314.blazing_bomb/tick/event/lingering/damage
#
# 範囲内に入ったやつとして実行し、ダメージを与える
#
# @within function asset:mob/0314.blazing_bomb/tick/event/lingering/

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# ダメージを与える。
   function lib:damage/
# リセット
    function lib:damage/reset