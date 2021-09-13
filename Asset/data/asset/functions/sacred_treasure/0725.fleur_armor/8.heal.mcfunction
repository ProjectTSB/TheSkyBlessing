#> asset:sacred_treasure/0725.fleur_armor/8.heal
#
#
#
# @within function asset:sacred_treasure/0725.fleur_armor/7.player_tick

# 演出
    execute positioned ~ ~0.1 ~ run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower_center
    execute positioned ~ ~0.1 ~ rotated ~ -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower
    execute positioned ~ ~0.1 ~ rotated ~72 -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower
    execute positioned ~ ~0.1 ~ rotated ~144 -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower
    execute positioned ~ ~0.1 ~ rotated ~216 -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower
    execute positioned ~ ~0.1 ~ rotated ~288 -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower

    playsound minecraft:block.amethyst_cluster.step master @a ~ ~ ~ 1 1 1
    playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.6 2 0
    execute as @a[distance=..10] at @s run particle heart ~ ~1.2 ~ 0.5 0.5 0.5 0 5 normal @a

# 回復
    data modify storage lib: Argument.Heal set value 5f
    function lib:heal/modifier
    execute as @a[distance=..10] run function lib:heal/
    data remove storage lib: Argument

# スコアリセット
    scoreboard players reset @s K5.Tick