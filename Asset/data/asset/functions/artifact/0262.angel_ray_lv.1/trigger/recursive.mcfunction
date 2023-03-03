#> asset:artifact/0262.angel_ray_lv.1/trigger/recursive
#
#
#
# @within function
#   asset:artifact/0262.angel_ray_lv.1/trigger/3.main
#   asset:artifact/0262.angel_ray_lv.1/trigger/recursive

# 処理
    execute as @e[type=area_effect_cloud,tag=7A.AngelRay] at @s run function asset:artifact/0262.angel_ray_lv.1/trigger/ray
# Entityが残ってるならループ予約
    execute if entity @e[type=area_effect_cloud,tag=7A.AngelRay,limit=1] run schedule function asset:artifact/0262.angel_ray_lv.1/trigger/recursive 1t