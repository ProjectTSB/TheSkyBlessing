#> asset:mob/0324.slash_entity/tick/
#
#
#
# @within function asset:mob/0324.slash_entity/_/tick

# Init処理を行う
    execute unless entity @s[tag=90.Init] run function asset:mob/0324.slash_entity/tick/init

# Tick加算
    scoreboard players add @s 90.Tick 1

# アニメーション
    execute if score @s 90.Tick matches 2 run data modify entity @s item.tag.CustomModelData set value