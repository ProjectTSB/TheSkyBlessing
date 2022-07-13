#> asset:mob/0265.dark_familiar/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0265.dark_familiar/death/1.trigger

# サウンド
    playsound minecraft:block.amethyst_cluster.break hostile @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.death hostile @a ~ ~ ~ 1.5 1.2