#> asset:mob/1008.yellow_star/attack/4.def_down
#
#
#
# @within function asset:mob/1008.yellow_star/attack/3.scheduleloop

# 演出
    execute if predicate lib:random_pass_per/20 run particle minecraft:soul ~ ~1.3 ~ 0.2 0.2 0.2 0.06 2

# スコアをへらす
    scoreboard players remove @s S0.Time 1

# 途中で死んだ時
    execute if entity @s[tag=Death] run scoreboard players set @s S0.Time 0

# リセットへ
    execute if score @s S0.Time matches 0 run function asset:mob/1008.yellow_star/attack/5.reset