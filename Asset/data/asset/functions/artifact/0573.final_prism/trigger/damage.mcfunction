#> asset:artifact/0573.final_prism/trigger/damage
#
# ヒット!
#
# @within function asset:artifact/0573.final_prism/trigger/3.main

# ダメージ
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Magic"
    # 防御貫通
        #data modify storage lib: Argument.FixedDamage set value true
    # 属性が変わる
        execute if score $Random Temporary matches 0 run data modify storage lib: Argument.ElementType set value "None"
        execute if score $Random Temporary matches 1 run data modify storage lib: Argument.ElementType set value "Fire"
        execute if score $Random Temporary matches 2 run data modify storage lib: Argument.ElementType set value "Water"
        execute if score $Random Temporary matches 3 run data modify storage lib: Argument.ElementType set value "Thunder"

# 補正functionを実行
    function lib:damage/modifier
# 攻撃した対象に実行
    execute as @e[type=#lib:living,tag=PrismDamage,distance=..50] at @s run function lib:damage/
    tag @e[type=#lib:living,tag=PrismDamage,distance=..50] remove PrismDamage

# リセット
    function lib:damage/reset