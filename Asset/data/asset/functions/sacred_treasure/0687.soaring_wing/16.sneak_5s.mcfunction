#> asset:sacred_treasure/0687.soaring_wing/16.sneak_5s
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/15.sneak_5s_trigger

# 演出
    particle sweep_attack ~ ~0.2 ~ 0.6 0 0.6 0 30 normal @a
    particle cloud ~ ~0.2 ~ 0 0 0 0.2 50
    playsound entity.wither.shoot master @a ~ ~ ~ 0.6 2 0

# 浮遊
    effect give @s levitation 1 30 true
