#> asset:sacred_treasure/0687.soaring_wing/9.flying_attack
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/8.fullset_flying

# 無属性ダメージ
    data modify storage lib: Argument.Damage set value 10f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,distance=..3] run function lib:damage/
    data remove storage lib: Argument