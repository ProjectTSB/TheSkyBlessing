#> asset:mob/0105.potion_projectile/tick/water/
#
#
#
# @within function asset:mob/0105.potion_projectile/tick/5.element_branch

# 演出
    particle snowflake ~ ~1.2 ~ 1 0.4 1 0 50 normal @a
    particle falling_dust diamond_block ~ ~1.2 ~ 1 0.4 1 0 20 normal @a
    playsound block.glass.break master @a ~ ~ ~ 1 2 0

# ダメージとデバフ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..3] run function asset:mob/0105.potion_projectile/tick/water/1.water_damage

# 自身をkill
    kill @s