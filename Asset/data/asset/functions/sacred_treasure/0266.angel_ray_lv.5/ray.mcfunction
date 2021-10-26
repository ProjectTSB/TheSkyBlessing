#> asset:sacred_treasure/0266.angel_ray_lv.5/ray
#
#
#
# @within function
#   asset:sacred_treasure/0266.angel_ray_lv.5/3.main
#   asset:sacred_treasure/0266.angel_ray_lv.5/recursive

# 経過tickの加算
    scoreboard players add @s 7E.HolySymbol 1
# VFX
    function asset:sacred_treasure/0266.angel_ray_lv.5/vfx/
# 10tickで消える
    execute if score @s 7E.HolySymbol matches 8.. run kill @s