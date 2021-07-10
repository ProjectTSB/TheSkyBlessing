#> asset:sacred_treasure/0573.final_prism/damage
#
# ヒット!
#
# @within function asset:sacred_treasure/0573.final_prism/laser

# ダメージ
    # 与えるダメージ = 5
        data modify storage lib: Argument.Damage set value 5f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 属性が変わる
        execute if score $Random Temporary matches 0 run data modify storage lib: Argument.ElementType set value "None"
        execute if score $Random Temporary matches 1 run data modify storage lib: Argument.ElementType set value "Fire"
        execute if score $Random Temporary matches 2 run data modify storage lib: Argument.ElementType set value "Water"
        execute if score $Random Temporary matches 3 run data modify storage lib: Argument.ElementType set value "Thunder"

# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[tag=Enemy,dx=0] run function lib:damage/
# リセット
    data remove storage lib: Argument