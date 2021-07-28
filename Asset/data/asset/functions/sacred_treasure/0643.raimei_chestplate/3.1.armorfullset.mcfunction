#> asset:sacred_treasure/0643.raimei_chestplate/3.1.armorfullset
#
# セット効果
#
# @within function asset:sacred_treasure/????.raimei_*/3.main

# 演出
    particle dust 1 1 0 1 ~ ~3 ~ 0.7 3 0.7 0 300
    particle dust 1 1 0 1 ~ ~5 ~ 0.1 5 0.1 0 300
    particle minecraft:explosion ~ ~ ~ 0.3 0 0.3 0 10
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 100

    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
    playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1 2 1
    playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1 0 1

# タグを付与する
    tag @s add 