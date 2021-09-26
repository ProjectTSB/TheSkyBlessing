#> asset:sacred_treasure/0669.blizzard_armor/4.fullset
#
#
# @within function asset:sacred_treasure/0668.blizzard_helm/3.main
# @within function asset:sacred_treasure/0669.blizzard_armor/3.main
# @within function asset:sacred_treasure/0670.blizzard_leggings/3.main
# @within function asset:sacred_treasure/0671.blizzard_boots/3.main

# 演出
    particle snowflake ~ ~1.4 ~ 0 0 0 1 80 normal @a

# タグ付与
    tag @s add IL.FullSet

# スケジュールループ開始
    schedule function asset:sacred_treasure/0669.blizzard_armor/5.schedule_loop 1t replace