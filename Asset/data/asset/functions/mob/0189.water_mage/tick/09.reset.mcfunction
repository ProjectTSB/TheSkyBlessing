#> asset:mob/0189.water_mage/tick/09.reset
#
#
#
# @within function asset:mob/0189.water_mage/tick/03.magic

# リセット
    scoreboard players reset @s 59.Tick
    data modify entity @s NoAI set value 0b