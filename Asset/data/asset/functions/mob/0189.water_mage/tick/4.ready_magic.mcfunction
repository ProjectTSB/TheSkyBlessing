#> asset:mob/0189.water_mage/tick/4.ready_magic
#
#
#
# @within function asset:mob/0189.water_mage/tick/3.magic

# 最寄りのプレイヤーに向きを合わせNoAIになる
    tp @s ~ ~ ~ facing entity @p[gamemode=!spectator] feet
    data modify entity @s NoAI set value 1b