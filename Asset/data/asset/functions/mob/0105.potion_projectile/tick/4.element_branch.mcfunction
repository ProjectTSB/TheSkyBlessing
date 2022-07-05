#> asset:mob/0105.potion_projectile/tick/4.element_branch
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/2.tick

# 分岐
    execute if entity @s[tag=2X.Poison] run function asset:mob/0105.potion_projectile/tick/poison/1.tick
    execute if entity @s[tag=2X.Fire] run function asset:mob/0105.potion_projectile/tick/fire/1.explosion
    execute if entity @s[tag=2X.Water] run function asset:mob/0105.potion_projectile/tick/water/1.break
    execute if entity @s[tag=2X.Thunder] run function asset:mob/0105.potion_projectile/tick/thunder/1.break

