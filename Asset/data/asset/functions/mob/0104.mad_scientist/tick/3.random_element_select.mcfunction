#> asset:mob/0104.mad_scientist/tick/3.random_element_select
#
# 次に投げるポーションを設定
#
# @within function asset:mob/0104.mad_scientist/tick/2.tick

 # 25%ずつの確率で4つに分岐 それぞれ毒、火、水、雷
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $4 Const
    execute if score $Random Temporary matches 0 run tag @s add 2W.Poison
    execute if score $Random Temporary matches 1 run tag @s add 2W.Fire
    execute if score $Random Temporary matches 2 run tag @s add 2W.Water
    execute if score $Random Temporary matches 3 run tag @s add 2W.Thunder
    scoreboard players reset $Random Temporary

# せっかくなら持ってるポーションの色合わせたい
    execute if entity @s[tag=2W.Poison] run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:26112}
    execute if entity @s[tag=2W.Fire] run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:13369344}
    execute if entity @s[tag=2W.Water] run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:8454143}
    execute if entity @s[tag=2W.Thunder] run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:16776960}