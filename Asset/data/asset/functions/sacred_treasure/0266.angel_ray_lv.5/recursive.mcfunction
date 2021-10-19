#> asset:sacred_treasure/0266.angel_ray_lv.5/recursive
#
#
#
# @within function
#   asset:sacred_treasure/0266.angel_ray_lv.5/3.main
#   asset:sacred_treasure/0266.angel_ray_lv.5/recursive

# 処理
    execute as @e[type=area_effect_cloud,tag=7A.AngelRay] at @s run function asset:sacred_treasure/0266.angel_ray_lv.5/ray
# Entityが残ってるならループ予約
    execute if entity @e[type=area_effect_cloud,tag=7A.AngelRay,limit=1] run schedule function asset:sacred_treasure/0266.angel_ray_lv.5/recursive 1t