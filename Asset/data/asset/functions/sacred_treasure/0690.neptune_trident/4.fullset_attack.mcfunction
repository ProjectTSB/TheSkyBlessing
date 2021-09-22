#> asset:sacred_treasure/0690.neptune_trident/4.fullset_attack
#
#
#
# @within function asset:sacred_treasure/0690.neptune_trident/2.check_condition

# 演出 as @e[tag=!Victim]なのは意図的です
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable] as @e[type=#lib:living,tag=!Victim,tag=!Uninterferable,distance=..3] run particle splash ~ ~1.2 ~ 0.3 0 0.3 0 50 normal @a

# ダメージ
    data modify storage lib: Argument.Damage set value 50.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute at @e[type=#lib:living,tag=Victim,tag=!Uninterferable] as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] run function lib:damage/
    data remove storage lib: Argument
