#> asset:mob/0082.amethyst_shrinker/tick/4.recursion
#
#
#
# @within function asset:mob/0082.amethyst_shrinker/tick/3.lazer
# @within function asset:mob/0082.amethyst_shrinker/tick/4.recursion

# スコア
    scoreboard players add @s 2A.LazerTick 1

# 前方拡散
    execute if score @s 2A.LazerTick matches 1 run function asset:mob/0082.amethyst_shrinker/tick/5.forward_spread

# 演出
    particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a
    playsound minecraft:block.amethyst_block.step master @a ~ ~ ~ 0.2 1 0

# 無属性ダメージ
    execute if entity @a[gamemode=!creative,gamemode=!spectator,distance=..1.5] run function asset:mob/0082.amethyst_shrinker/tick/6.element_damage

# 再帰ループ
    execute if score @s 2A.LazerTick matches ..20 positioned ^ ^ ^1.0 run function asset:mob/0082.amethyst_shrinker/tick/4.recursion