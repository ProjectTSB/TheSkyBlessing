#> asset:artifact/0262.angel_ray_lv.1/trigger/ray
#
#
#
# @within function
#   asset:artifact/0262.angel_ray_lv.1/trigger/3.main
#   asset:artifact/0262.angel_ray_lv.1/trigger/recursive

# 経過tickの加算
    scoreboard players add @s 7A.AngelRay 1
# VFX
    function asset:artifact/0262.angel_ray_lv.1/trigger/vfx/
# 10tickで消える
    execute if score @s 7A.AngelRay matches 8.. run kill @s