#> asset:sacred_treasure/0743.fierce_water_armor/10.melee
#
#
#
# @within function asset:sacred_treasure/0743.fierce_water_armor/9.melee_trigger

# ダメージ処理 ダメージはSprintingスコアで変動
    execute if score @s KN.Sprinting matches 0..20 run data modify storage lib: Argument.Damage set value 7.0f
    execute if score @s KN.Sprinting matches 21..50 run data modify storage lib: Argument.Damage set value 10.0f
    execute if score @s KN.Sprinting matches 51..80 run data modify storage lib: Argument.Damage set value 12.5f
    execute if score @s KN.Sprinting matches 81.. run data modify storage lib: Argument.Damage set value 15.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..6] run function lib:damage/
    data remove storage lib: Argument

# 再帰
    execute rotated ~ ~-10 positioned ^ ^1 ^0.5 run function asset:sacred_treasure/0743.fierce_water_armor/11.melee_recursion