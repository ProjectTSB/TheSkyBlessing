#> asset:sacred_treasure/0840.honey_bee_stick/trigger/5.damage
#
# ダメージを与えるよ
#
# @within function asset:sacred_treasure/0840.honey_bee_stick/trigger/3.main

# ダメージ
    data modify storage lib: Argument.Damage set value 40.0f
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..5] run function lib:damage/
    data remove storage lib: Argument
