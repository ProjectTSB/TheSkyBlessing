#> asset:mob/0061.stray/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0061.stray/attack/1.trigger


# 水属性ダメージ

# 引数の設定
    # 与えるダメー
        data modify storage lib: Argument.Damage set value 4.0
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Water"
# 補正functionを実行
    function lib:damage/modifier
# 範囲5m以内のゾンビを対象に
    execute as @e[type=zombie,distance=..5] run function lib:damage/
# リセット
    data remove storage lib: Argument