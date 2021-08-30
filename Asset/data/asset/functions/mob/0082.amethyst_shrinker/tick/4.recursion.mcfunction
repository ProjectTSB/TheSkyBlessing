#> asset:mob/0082.amethyst_shrinker/tick/4.recursion
#
#
#
# @within function asset:mob/0082.amethyst_shrinker/tick/3.lazer
# @within function asset:mob/0082.amethyst_shrinker/tick/4.recursion

# 演出
    particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a
    playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 0.2 1 0

# 無属性ダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function asset:mob/0082.amethyst_shrinker/tick/6.element_damage

# 再帰ループ
    execute if block ^ ^ ^1 #lib:no_collision_without_fluid positioned ^ ^ ^1.0 if entity @s[distance=..30] run function asset:mob/0082.amethyst_shrinker/tick/4.recursion