#> asset:sacred_treasure/0679.kitsunebi_armor/4.fullset
#
#
# @within function asset:sacred_treasure/0678.kitsunebi_helm/3.main
# @within function asset:sacred_treasure/0679.kitsunebi_armor/3.main
# @within function asset:sacred_treasure/0680.kitsunebi_leggings/3.main
# @within function asset:sacred_treasure/0681.kitsunebi_boots/3.main

# 演出
    particle flame ~0 ~1.2 ~-3 0.1 0.3 0.1 0 15
    particle soul_fire_flame ~2.12132 ~1.2 ~-2.12132 0.1 0.3 0.1 0 15
    particle flame ~3 ~1.2 ~0 0.1 0.3 0.1 0 15
    particle soul_fire_flame ~2.12132 ~1.2 ~2.12132 0.1 0.3 0.1 0 15
    particle flame ~0 ~1.2 ~3 0.1 0.3 0.1 0 15
    particle soul_fire_flame ~-2.12132 ~1.2 ~2.12132 0.1 0.3 0.1 0 15
    particle flame ~-3 ~1.2 ~0 0.1 0.3 0.1 0 15
    particle soul_fire_flame ~-2.12132 ~1.2 ~-2.12132 0.1 0.3 0.1 0 15
    playsound block.fire.ambient master @a ~ ~ ~ 0.8 0.5 0.6


# Tagを自身に付与
    tag @s add IV.FullSet

# スケジュールループ
    schedule function asset:sacred_treasure/0679.kitsunebi_armor/7.schedule_loop 1t replace