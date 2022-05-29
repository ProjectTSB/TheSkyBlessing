#> asset:mob/0265.dark_familiar/tick/event/shoot
#
#
#
# @within function asset:mob/0265.dark_familiar/tick/2.tick

# 召喚
    data modify storage api: Argument.ID set value 266
    execute anchored eyes positioned ^ ^ ^ run function api:mob/summon

# スコアのリセット
    scoreboard players reset @s 7D.Move

# サウンド
    playsound minecraft:entity.shulker_bullet.hurt neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:block.amethyst_cluster.break neutral @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.vex.ambient neutral @a ~ ~ ~ 1.5 2