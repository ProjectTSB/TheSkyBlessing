#> asset:sacred_treasure/0743.fierce_water_armor/12.damage
#
#
#
# @within function asset:sacred_treasure/0743.fierce_water_armor/11.melee_recursion

# ダメージ処理 ダメージはSprintingスコアで変動
    execute if score @s KN.Sprinting matches 0.. run data modify storage lib: Argument.Damage set value 5.0f
    execute if score @s KN.Sprinting matches 21..50 run data modify storage lib: Argument.Damage set value 8.0f
    execute if score @s KN.Sprinting matches 51..80 run data modify storage lib: Argument.Damage set value 10.0f
    execute if score @s KN.Sprinting matches 81.. run data modify storage lib: Argument.Damage set value 12.5f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..1.5] run function lib:damage/
    data remove storage lib: Argument
