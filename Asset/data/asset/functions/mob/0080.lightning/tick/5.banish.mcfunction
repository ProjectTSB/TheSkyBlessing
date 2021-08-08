#> asset:mob/0080.lightning/tick/5.banish
#
#
#
# @within function asset:mob/0080.lightning/tick/2.tick

# 演出
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 0.7 1 0.6
    particle smoke ~ ~ ~ 1 0.3 1 0 30 normal @a

# キル
    kill @s