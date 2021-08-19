#> asset:mob/0065.night_shadow/tick/3.sunrise_lapse
#
#
#
# @within function asset:mob/0065.night_shadow/tick/2.tick

# スコア(killで死ぬ姿を見せたくないためのスコア)
    scoreboard players add @s 1T.Sunrise 1

# 演出
    execute if score @s 1T.Sunrise matches 1 run particle dust 0 0 0 2 ~ ~ ~ 0.4 0.4 0.4 0 40 normal @a
# 消滅
    execute if score @s 1T.Sunrise matches 1..3 run tp @s ~ -10 ~
    execute if score @s 1T.Sunrise matches 4 run kill @s 