#> asset:artifact/0270.angel_ray_lv.10/trigger/ray
#
#
#
# @within function
#   asset:artifact/0270.angel_ray_lv.10/trigger/3.main
#   asset:artifact/0270.angel_ray_lv.10/trigger/recursive

# 経過tickの加算
    scoreboard players add @s 7I.AngelRay 1
# VFX
    function asset:artifact/0270.angel_ray_lv.10/trigger/vfx/
# 10tickで消える
    execute if score @s 7I.AngelRay matches 8.. run kill @s