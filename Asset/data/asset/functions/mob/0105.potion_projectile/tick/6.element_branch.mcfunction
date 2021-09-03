#> asset:mob/0105.potion_projectile/tick/6.element_branch
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/2.tick

# 分岐
    execute if entity @s[tag=2X.Poison] run function asset:mob/0105.potion_projectile/tick/poison/
    execute if entity @s[tag=2X.Fire] run function asset:mob/0105.potion_projectile/tick/fire/
    execute if entity @s[tag=2X.Water] run function asset:mob/0105.potion_projectile/tick/water/
    execute if entity @s[tag=2X.Thunder] run function asset:mob/0105.potion_projectile/tick/thunder/

