#> asset:mob/0046.clock_of_despair/tick/skill/3_oclock/3_oclock
#
#
#
# @within function asset:mob/0046.clock_of_despair/tick/3.skill_active

# 開幕
    execute if score @s 1A.LifeTime matches 300 run playsound minecraft:block.bell.use master @a

# クッキーをあげる
    execute if score @s 1A.LifeTime matches 340 run give @a cookie
    execute if score @s 1A.LifeTime matches 360 run give @a cookie
    execute if score @s 1A.LifeTime matches 380 run give @a cookie