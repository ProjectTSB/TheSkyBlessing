#> asset:sacred_treasure/0687.soaring_wing/14.sneak_5s
#
#
#
# @within function asset:sacred_treasure/0687.soaring_wing/13.sneak

# 演出
    particle sweep_attack ~ ~0.6 ~ 0.6 0.3 0.6 0 50 normal @a
    particle cloud ~ ~0.2 ~ 0 0 0 0.2 100
    playsound entity.wither.shoot master @a ~ ~ ~ 0.6 2 0

# 浮遊
    effect give @s levitation 1 30 true

# スニークスコアをリセット
    scoreboard players reset @s J3.SneakTime