#> asset:mob/0080.lightning/tick/4.element_damage
#
#
#
# @within function asset:mob/0080.lightning/tick/2.tick

# 引数の設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 6.0d
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 第二属性
        data modify storage lib: Argument.ElementType set value "Thunder"
# 補正functionを実行
    function lib:damage/modifier
# ダメージ対象
    execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1] run function lib:damage/
# リセット
    data remove storage lib: Argument

