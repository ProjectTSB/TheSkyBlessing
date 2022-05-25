#> asset:mob/0150.contamination/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0150.contamination/attack/1.trigger

# ガス召喚
    execute at @p[tag=Victim,distance=..32] run function asset:mob/0150.contamination/gus_summon

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 36f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset