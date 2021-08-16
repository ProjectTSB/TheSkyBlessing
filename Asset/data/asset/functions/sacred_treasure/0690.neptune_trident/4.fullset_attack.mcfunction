#> asset:sacred_treasure/0690.neptune_trident/4.fullset_attack
#
#
#
# @within function asset:sacred_treasure/0690.neptune_trident/2.check_condition

# ダメージ
    # ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 10.0f
    # 第一属性
        data modify storage lib: Argument.AttackType set value "Magic"
        data modify storage lib: Argument.ElementType set value "Water"
    # ダメージ
        function lib:damage/modifier
        execute at @e[tag=Victim] as @e[type=#lib:living,type=!player,distance=..3] run function lib:damage/
    # リセット
        data remove storage lib: Argument