#> asset:mob/0059.jack_o_lantern/tick/8.end_glowing
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/4.manage_glowing

# ただのカボチャに
    item replace entity @s armor.head with carved_pumpkin{CustomModelData:20016}

# 演出
    particle dust 0 0 0 1 ~ ~1.6 ~ 0.3 0.3 0.3 0 30 normal @a
    playsound block.fire.extinguish hostile @a ~ ~ ~ 1 0.6 0

# スコアリセット
    scoreboard players reset @s 1N.Glowing
    scoreboard players reset @s 1N.Surprise