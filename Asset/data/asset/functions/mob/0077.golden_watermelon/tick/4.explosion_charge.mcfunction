#> asset:mob/0077.golden_watermelon/tick/4.explosion_charge
#
#
#
# @within function asset:mob/0077.golden_watermelon/tick/2.tick

# 1段目炸裂時に地面へ落下
    execute positioned ~ ~1.6 ~ if block ~ ~-0.2 ~ #lib:no_collision run tp @s ~ ~-2 ~

# 2段目爆発
    execute if score @s 25.Tick matches 35.. run function asset:mob/0077.golden_watermelon/tick/5.explosion_2

