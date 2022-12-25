#> asset:mob/0105.potion_projectile/tick/water/1.break
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/4.element_branch

# 演出
    particle snowflake ~ ~1.2 ~ 1 0.4 1 0 50 normal @a
    particle falling_dust diamond_block ~ ~1.2 ~ 1 0.4 1 0 20 normal @a
    playsound block.glass.break hostile @a ~ ~ ~ 1 2 0
    particle end_rod ~ ~ ~ 0 0 0 0.4 200
    particle minecraft:large_smoke ~ ~ ~ 0 0 0 0.4 10

# ダメージとデバフ
    execute if entity @a[tag=!PlayerShouldInvulnerable,distance=..3] run function asset:mob/0105.potion_projectile/tick/water/2.water_damage

# 自身をkill
    kill @s