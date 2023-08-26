#> asset:mob/0055.hetukedah/tick/skill/charge/hit
#
#
#
# @within function asset:mob/0055.hetukedah/tick/skill/charge/move_forward

# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 6.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 雷属性
        data modify storage lib: Argument.ElementType set value "Thunder"
    # ダメージ
        function lib:damage/modifier
        function lib:damage/
# リセット
    function lib:damage/reset