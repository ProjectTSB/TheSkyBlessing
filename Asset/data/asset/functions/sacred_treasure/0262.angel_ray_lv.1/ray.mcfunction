#> asset:sacred_treasure/0262.angel_ray_lv.1/ray
#
#
#
# @within function
#   asset:sacred_treasure/0262.angel_ray_lv.1/3.main
#   asset:sacred_treasure/0262.angel_ray_lv.1/recursive

# 経過tickの加算
    scoreboard players add @s 7A.AngelRay 1
# VFX
    function asset:sacred_treasure/0262.angel_ray_lv.1/vfx/
# 10tickで消える
    execute if score @s 7A.AngelRay matches 8.. run kill @s