#> asset:mob/0104.mad_scientist/tick/3.random_element_select
#
#
#
# @within function asset:mob/0104.mad_scientist/tick/player_is_nearby

 # 25%ずつの確率で4つに分岐 それぞれ毒、火、水、雷
    execute store result score $Random Temporary run function lib:random/
    scoreboard players operation $Random Temporary %= $100 Const
    execute if score $Random Temporary matches 0..24 run tag @s add 2W.Poison
    execute if score $Random Temporary matches 25..49 run tag @s add 2W.Fire
    execute if score $Random Temporary matches 50..74 run tag @s add 2W.Water
    execute if score $Random Temporary matches 75..99 run tag @s add 2W.Thunder
    scoreboard players reset $Random Temporary

# せっかくなら持ってるポーションの色合わせたい
    execute if entity @s[tag=2W.Poison] run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:26112}
    execute if entity @s[tag=2W.Fire] run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:13369344}
    execute if entity @s[tag=2W.Water] run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:8454143}
    execute if entity @s[tag=2W.Thunder] run item replace entity @s weapon.mainhand with splash_potion{CustomPotionColor:16776960}