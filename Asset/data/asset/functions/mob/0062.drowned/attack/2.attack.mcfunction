#> asset:mob/0062.drowned/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0062.drowned/attack/1.trigger

# 引数の設定
    # 与えるダメージ = 7.5
        data modify storage lib: Argument.Damage set value 3.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 範囲5m以内のゾンビを対象に
    execute as @p[tag=Victim] run function lib:damage/
# リセット
    data remove storage lib: Argument