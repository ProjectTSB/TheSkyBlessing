#> asset:mob/0074.watermelon_bomber/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0074.watermelon_bomber/death/1.trigger

# 演出
    particle block melon ~ ~1.3 ~ 0.3 0.5 0.3 0 40 normal @a
    particle block nether_wart_block ~ ~1.3 ~ 0.4 0.4 0.4 0 40 normal @a
    particle explosion ~ ~1.5 ~ 0.4 0.4 0.4 0 10 normal @a
    playsound entity.generic.explode master @a ~ ~ ~ 0.5 1 0

# スイカ設置
    fill ~ ~ ~ ~ ~ ~ melon replace #lib:air
