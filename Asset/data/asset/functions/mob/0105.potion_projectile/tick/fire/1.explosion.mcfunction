#> asset:mob/0105.potion_projectile/tick/fire/1.explosion
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/4.element_branch

# 爆発演出
    particle explosion ~ ~1.2 ~ 0.6 0.4 0.6 0 10 normal @a
    particle lava ~ ~1.2 ~ 1 0.4 1 0 50 normal @a
    playsound entity.generic.explode hostile @a ~ ~ ~ 0.7 1 0
    execute rotated 0 0 run function asset:mob/0105.potion_projectile/tick/fire/particle.1
# ダメージ
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..4] run function asset:mob/0105.potion_projectile/tick/fire/2.fire_damage

# キル
    kill @s