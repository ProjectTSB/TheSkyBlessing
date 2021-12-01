#> asset:mob/0171.lumberjack_of_blue_forest/attack/4.attribute_effect_time
#
#
#
# @within function asset:mob/0171.lumberjack_of_blue_forest/attack/3.schedule_loop

# スコア
    scoreboard players add @s 4R.Attribute 1

# 演出
    particle soul ~ ~1.2 ~ 0.3 0.4 0.3 0 1 normal @a

# 効果削除
    execute if score @s 4R.Attribute matches 200.. run function asset:mob/0171.lumberjack_of_blue_forest/attack/5.atribute_remove