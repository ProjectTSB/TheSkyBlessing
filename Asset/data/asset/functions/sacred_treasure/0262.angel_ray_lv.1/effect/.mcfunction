#> asset:sacred_treasure/0262.angel_ray_lv.1/effect/
#
#
#
# @within function asset:sacred_treasure/0262.angel_ray_lv.1/3.main

# それぞれでmodifierを実行するのは面倒なので先に処理してしまう
    data modify storage lib: Argument.Damage set value 33.1d
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
    function lib:damage/modifier
    data modify storage lib: Argument.Heal set value 14.6d
    function lib:heal/modifier
# 対象探索
    function asset:sacred_treasure/0262.angel_ray_lv.1/effect/find_target
# 処理
    execute as @e[type=#lib:living,tag=Enemy,distance=..12] run function lib:damage/
    execute as @e[type=#lib:living,tag=Friend,distance=..12] run function lib:heal/
    execute as @e[type=player,distance=..12] run function lib:heal/
# リセット
    tag @e[type=#lib:living,tag=Target] remove Target
    data remove storage lib: Argument