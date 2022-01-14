#> asset:mob/0059.jack_o_lantern/hurt/3.shorten_glowing
#
#
#
# @within function asset:mob/0059.jack_o_lantern/hurt/2.hurt

# 即座に姿を現す
    scoreboard players set @s 1N.Glowing 220
    particle dust 1 0.6 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    particle dust 0.851 0 1 1 ~ ~1.7 ~ 0.6 0.4 0.6 0 20 normal @a
    playsound entity.witch.celebrate hostile @a ~ ~ ~ 0.8 1.2 0
    item replace entity @s armor.head with jack_o_lantern{CustomModelData:20017}

# 見破られた場合弱体化
    effect give @s slowness 3 10 true
    effect clear @s resistance