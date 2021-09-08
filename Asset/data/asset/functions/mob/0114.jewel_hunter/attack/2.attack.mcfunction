#> asset:mob/0114.jewel_hunter/attack/2.attack
#
# Mobの攻撃時の処理
#
# @within function asset:mob/0114.jewel_hunter/attack/1.trigger

# 固定8ダメージ
    data modify storage lib: Argument.Damage set value 8f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "None"
    data modify storage lib: Argument.Fixed set value 1b
    data modify storage lib: Argument.BypassResist set value 1b
    execute as @p[tag=Victim,distance=..6] run function lib:damage/
    data remove storage lib: Argument