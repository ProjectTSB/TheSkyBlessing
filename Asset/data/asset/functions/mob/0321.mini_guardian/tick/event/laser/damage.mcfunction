#> asset:mob/0321.mini_guardian/tick/event/laser/damage
#
# レーザーのダメージ
#
# @within function asset:mob/0321.mini_guardian/tick/event/laser/green

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 8f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        function lib:damage/
# リセット
    function lib:damage/reset