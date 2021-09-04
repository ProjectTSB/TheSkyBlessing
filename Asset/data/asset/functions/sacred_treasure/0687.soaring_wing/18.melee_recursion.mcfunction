#> asset:sacred_treasure/0687.soaring_wing/18.melee_recursion
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/17.melee
# @within function asset:sacred_treasure/0687.soaring_wing/18.melee_recursion

# 演出
    particle sweep_attack ~ ~ ~ 0.6 0.6 0.6 0 10 normal @a
    particle cloud ~ ~ ~ 0.3 0.3 0.3 0.2 5 normal @a
    playsound entity.wither.shoot master @a ~ ~ ~ 0.2 2 0

# ダメージ判定
    execute if entity @e[type=#lib:living,type=!player,distance=..1.0] run function asset:sacred_treasure/0687.soaring_wing/19.melee_recursion_attack

# 再帰処理
    execute if entity @s[distance=..15] if block ^ ^ ^1 #lib:no_collision_without_fluid positioned ^ ^ ^1 run function asset:sacred_treasure/0687.soaring_wing/18.melee_recursion