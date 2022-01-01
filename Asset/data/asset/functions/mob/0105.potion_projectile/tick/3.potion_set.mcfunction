#> asset:mob/0105.potion_projectile/tick/3.potion_set
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/2.tick

# 向き合わせ
    tp @s ~ ~ ~ facing entity @p[gamemode=!creative,gamemode=!spectator] feet

# 属性別に色を合わせる
    item replace entity @s[tag=2X.Poison] armor.head with splash_potion{CustomPotionColor:26112}
    item replace entity @s[tag=2X.Fire] armor.head with splash_potion{CustomPotionColor:13369344}
    item replace entity @s[tag=2X.Water] armor.head with splash_potion{CustomPotionColor:8454143}
    item replace entity @s[tag=2X.Thunder] armor.head with splash_potion{CustomPotionColor:16776960}