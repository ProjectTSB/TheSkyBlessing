#> asset:mob/0284.lexiel/tick/skill/spin/3.damage
#
#
#
# @within function asset:mob/0284.lexiel/tick/skill/spin/1.spin

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 28.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "None"
# 補正functionを実行
    function lib:damage/modifier
# 前方にいたプレイヤーにダメージ
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..5] run function lib:damage/
# リセット
    function lib:damage/reset