#> asset:mob/1005.blue_star/attack/4.mp_inversion
#
#
#
# @within function asset:mob/1005.blue_star/attack/3.scheduleloop

# 演出
    execute if predicate lib:random_pass_per/20 run particle minecraft:soul ~ ~1.3 ~ 0.2 0.2 0.2 0.06 2

# スコアをへらす
    scoreboard players remove @s RX.Time 1

# 途中で死んだ時
    execute if entity @s[tag=Death] run function asset:mob/1005.blue_star/attack/5.reset

# 0になった時
    execute if score @s RX.Time matches 0 run function asset:mob/1005.blue_star/attack/5.reset