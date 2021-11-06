#> asset:mob/0151.recombined/attack/4.def_down
#
#
#
# @within function asset:mob/0151.recombined/attack/3.scheduleloop

# 演出
    execute if predicate lib:random_pass_per/20 run particle minecraft:soul ~ ~1.3 ~ 0.2 0.2 0.2 0.06 2

# スコアをへらす
    scoreboard players remove @s 47.DefDownTime 1

# 途中で死んだ時
    execute if entity @s[tag=Death] run tag @s remove 25.DefDown

# 0になった時
    execute if score @s 47.DefDownTime matches 0 run playsound entity.generic.extinguish_fire player @a ~ ~ ~ 1 1
    execute if score @s 47.DefDownTime matches 0 run attribute @s minecraft:generic.armor modifier remove 1-0-2-0-9700000000
    execute if score @s 47.DefDownTime matches 0 run tag @s remove 25.DefDown