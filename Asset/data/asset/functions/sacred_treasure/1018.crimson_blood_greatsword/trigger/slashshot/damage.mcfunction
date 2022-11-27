#> asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/damage
#
#
#
# @within function asset:sacred_treasure/1018.crimson_blood_greatsword/trigger/slashshot/2.main

#> ヒット時のタグ
# @private
    #declare tag Hit

# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 100.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ判定
        function lib:damage/modifier

    # ヒットしたやつに対して実行
        function lib:damage/

# リセット
    function lib:damage/reset