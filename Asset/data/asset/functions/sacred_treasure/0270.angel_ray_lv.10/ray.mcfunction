#> asset:sacred_treasure/0270.angel_ray_lv.10/ray
#
#
#
# @within function
#   asset:sacred_treasure/0270.angel_ray_lv.10/3.main
#   asset:sacred_treasure/0270.angel_ray_lv.10/recursive

# 経過tickの加算
    scoreboard players add @s 7I.AngelRay 1
# VFX
    function asset:sacred_treasure/0270.angel_ray_lv.10/vfx/
# 10tickで消える
    execute if score @s 7I.AngelRay matches 8.. run kill @s