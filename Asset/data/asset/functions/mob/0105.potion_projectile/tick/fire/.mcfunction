#> asset:mob/0105.potion_projectile/tick/fire/
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/6.element_branch

# スコア
    scoreboard players add @s 2X.InBlockTime 1

# 演出
    execute unless score @s 2X.InBlockTime matches 40.. run particle lava ~ ~ ~ 1 0 1 0 1 normal @a
    execute unless score @s 2X.InBlockTime matches 40.. run playsound entity.blaze.shoot master @a ~ ~ ~ 0.4 1 0

# 爆発
    execute if score @s 2X.InBlockTime matches 40.. run function asset:mob/0105.potion_projectile/tick/fire/1.explosion
