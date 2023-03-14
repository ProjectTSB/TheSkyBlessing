#> asset:artifact/0270.angel_ray_lv.10/trigger/recursive
#
#
#
# @within function
#   asset:artifact/0270.angel_ray_lv.10/trigger/3.main
#   asset:artifact/0270.angel_ray_lv.10/trigger/recursive

# 処理
    execute as @e[type=area_effect_cloud,tag=7I.AngelRay] at @s run function asset:artifact/0270.angel_ray_lv.10/trigger/ray
# Entityが残ってるならループ予約
    execute if entity @e[type=area_effect_cloud,tag=7I.AngelRay,limit=1] run schedule function asset:artifact/0270.angel_ray_lv.10/trigger/recursive 1t