#> asset:mob/0099.witch_zombie/tick/6.shooting_magic
#
#
#
# @within function asset:mob/0099.witch_zombie/tick/3.magic

# 魔法弾を召喚
    data modify storage api: Argument.ID set value 100
    execute positioned ~ ~3.5 ~ run function api:mob/summon

# スコアとTagをリセット
    scoreboard players reset @s 2R.Tick
    execute if entity @s[tag=2R.Element] run tag @s remove 2R.Element

# NoAI解除
    data modify entity @s NoAI set value 0b