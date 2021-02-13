#> asset:sacred_treasure/0075.whirlpool_wand/3.2.outsidewater
#
# 水の中に敵がいない場合ダメージは基本値40
#
# @within function asset:sacred_treasure/0075.whirlpool_wand/3.main

# ダメージ
    # 与えるダメージ = 40
        data modify storage lib: Argument.Damage set value 40f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージを与える
        function lib:damage/modifier
        function lib:damage/modifier
# リセット
    data remove storage lib: Argument