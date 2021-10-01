#> asset:sacred_treasure/0725.fleur_armor/4.fullset
#
#
#
# @within function
#   asset:sacred_treasure/0724.fleur_helm/3.main
#   asset:sacred_treasure/0725.fleur_armor/3.main
#   asset:sacred_treasure/0726.fleur_leggings/3.main
#   asset:sacred_treasure/0727.fleur_boots/3.main

# タグ付与
    tag @s add K5.Fullset

# 演出
    execute positioned ~ ~0.1 ~ run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower_center
    execute positioned ~ ~0.1 ~ rotated ~ -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower
    execute positioned ~ ~0.1 ~ rotated ~72 -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower
    execute positioned ~ ~0.1 ~ rotated ~144 -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower
    execute positioned ~ ~0.1 ~ rotated ~216 -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower
    execute positioned ~ ~0.1 ~ rotated ~288 -10 positioned ^ ^ ^3 run function asset:sacred_treasure/0725.fleur_armor/fullset_particle/flower

# スケジュールループ開始
    schedule function asset:sacred_treasure/0725.fleur_armor/6.schedule_loop 1t replace