#> asset:sacred_treasure/0716.solar_armor/9.melee
#
#
#
# @within function asset:sacred_treasure/0716.solar_armor/8.melee_trigger

# 光度によってダメージと演出が変わります！

# 光度0-5だとなんもないよ！

# 光度6-10
    execute if predicate asset:sacred_treasure/0715.solar_armor/6-10 run function asset:sacred_treasure/0716.solar_armor/melee_light_level/6-10

# 光度11-15
    execute if predicate asset:sacred_treasure/0715.solar_armor/11-15 run function asset:sacred_treasure/0716.solar_armor/melee_light_level/11-15