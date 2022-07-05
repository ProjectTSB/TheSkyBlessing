#> asset:mob/0105.potion_projectile/tick/3.break_potion
#
#
# @within function asset:mob/0105.potion_projectile/tick/2.tick

# ポーション消し
    item replace entity @s armor.head with air

# 演出
    playsound entity.splash_potion.break hostile @a ~ ~ ~ 1 1 0
    particle block glass ~ ~ ~ 0 0 0 0 5

# 割れた判定Tagを付与
    tag @s add 2X.AlreadyBroken