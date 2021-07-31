#> asset:mob/0059.jack_o_lantern/tick/7.start_glowing
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/4.glowing

# 出現
    particle dust 1 0.6 0 1 ~ ~1.2 ~ 0.4 0.4 0.4 0 20 normal @a
    particle dust 0.851 0 1 1 ~ ~1.7 ~ 0.6 0.4 0.6 0 20 normal @a
    playsound entity.witch.celebrate master @a ~ ~ ~ 0.8 1.5 0
    replaceitem entity @s armor.head jack_o_lantern{CustomModelData:20017}
