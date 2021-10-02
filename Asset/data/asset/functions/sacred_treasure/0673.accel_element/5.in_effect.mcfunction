#> asset:sacred_treasure/0673.accel_element/5.in_effect
#
#
#
# @within function asset:sacred_treasure/0673.accel_element/4.schedule_loop

# 演出
    particle dust 1 0 0 1 ~ ~1.2 ~ 0.6 0.4 0.6 0 1 normal @a
    particle dust 0 1 1 1 ~ ~1.2 ~ 0.6 0.4 0.6 0 1 normal @a
    particle dust 1 1 0 1 ~ ~1.2 ~ 0.6 0.4 0.6 0 1 normal @a

# 効果解除までのスコア
    scoreboard players add @s IP.Tick 1

# 効果解除
    execute if score @s IP.Tick matches 1000 run function asset:sacred_treasure/0673.accel_element/6.remove_modifier