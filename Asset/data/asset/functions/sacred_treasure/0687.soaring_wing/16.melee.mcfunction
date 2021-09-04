#> asset:sacred_treasure/0687.soaring_wing/16.melee
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/15.melee_trigger

# 演出
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..5] run particle cloud ~ ~1.2 ~ 0 0.4 0 0.1 10 normal @a
    execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..5] run particle sweep_attack ~ ~1.2 ~ 0.3 0.4 0.3 0 5 normal @a

# 無属性物理ダメージ
    data modify storage lib: Argument.Damage set value 8f
    data modify storage lib: Argument.AttackType set value "Physical"
    function lib:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..5] run function lib:damage/
    data remove storage lib: Argument

# 前方へ攻撃判定 再帰処理
    execute positioned ^ ^1 ^ run function asset:sacred_treasure/0687.soaring_wing/17.melee_recursion