#> asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/damage
#
# ヒット
#
# @within function asset:sacred_treasure/0976.blue_heaven/trigger/slash_entity/2.main

# 引数の設定
    # 与えるダメージ = 7.5
        data modify storage lib: Argument.Damage set value 7.5f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    #function lib:damage/modifier
# 範囲5m以内のゾンビを対象に
    function lib:damage/
# リセット
    function lib:damage/reset