#> asset:mob/1008.yellow_star/attack/5.reset
#
#
#
# @within function asset:mob/1008.yellow_star/attack/4.def_down

# 演出
    playsound entity.generic.extinguish_fire player @a ~ ~ ~ 1 1

# 消す
    attribute @s minecraft:generic.armor modifier remove 1-0-2-0-3f000000000

# リセット
    scoreboard players reset @s S0.Time