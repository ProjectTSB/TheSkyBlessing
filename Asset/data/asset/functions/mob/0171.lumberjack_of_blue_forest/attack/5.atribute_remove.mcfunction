#> asset:mob/0171.lumberjack_of_blue_forest/attack/5.atribute_remove
#
#
#
# @within function asset:mob/0171.lumberjack_of_blue_forest/attack/4.attribute_effect_time

# 効果削除
    attribute @s generic.max_health modifier remove 00000001-0000-0002-0000-00ab00000000
    tag @s remove 4R.HealthDown
    scoreboard players reset @s 4R.Attribute
