#> asset:mob/9000.slash_entity/tick/
#
#
#
# @within function asset:mob/9000.slash_entity/_/tick

# Init処理を行う
    execute unless entity @s[tag=6Y0.Init] run function asset:mob/9000.slash_entity/tick/init

# Tick加算
    scoreboard players add @s 90.Tick 1

# アニメーション
    execute if score @s 90.Tick matches 2 run function asset:mob/9000.slash_entity/tick/start_animation
    execute if score @s 90.Tick matches 3.. store result entity @s item.tag.CustomModelData int -1 run data get entity @s item.tag.CustomModelData -1.000000000000001

# キル
    kill @s[scores={90.Tick=5}]