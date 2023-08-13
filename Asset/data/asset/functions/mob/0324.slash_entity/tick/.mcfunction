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
    execute if score @s 90.Tick matches 2 run function asset:mob/0324.slash_entity/tick/start_animation
    execute if score @s 90.Tick matches 3 run data modify entity @s item.tag.CustomModelData set value 20336
    execute if score @s 90.Tick matches 4 run data modify entity @s item.tag.CustomModelData set value 20337

# キル
    kill @s[scores={90.Tick=5}]